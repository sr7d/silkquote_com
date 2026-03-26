from PIL import Image, ImageDraw, ImageFont
from pilmoji import Pilmoji
import math

source = Image.open("images/SQ_Logo.png").convert("RGBA")
w, h = source.size
bg_color  = (255, 255, 255)   # white background

# SQ text bounds measured: (127,178)→(414,361)
text_cx = (127 + 414) // 2    # 270
text_cy = (178 + 361) // 2    # 269
text_h  = 361 - 178           # 183px tall

# Find emoji font size that renders at ~text_h pixels
emoji_font_path = "/System/Library/Fonts/Apple Color Emoji.ttc"
target_h = 160  # closest valid Apple Color Emoji size to text_h (180)

EMOJI_SCALE = 1.25

def make_emoji_slide(emoji):
    """Render an emoji centered, scaled up by EMOJI_SCALE."""
    font = ImageFont.truetype(emoji_font_path, target_h)

    # Render onto a temp canvas at base size
    tmp = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    with Pilmoji(tmp) as pil:
        ew, eh = pil.getsize(emoji, font=font)
        pil.text((0, -eh), emoji, font=font)  # render at top-left, corrected

    # Crop to the actual glyph (non-transparent area)
    bbox = tmp.getbbox()
    if bbox:
        glyph = tmp.crop(bbox)
        new_w = int(glyph.width  * EMOJI_SCALE)
        new_h = int(glyph.height * EMOJI_SCALE)
        glyph = glyph.resize((new_w, new_h), Image.LANCZOS)
    else:
        glyph = tmp

    # Paste centered onto slide
    slide = Image.new("RGB", (w, h), bg_color)
    x = (w - glyph.width)  // 2
    y = (h - glyph.height) // 2
    slide.paste(glyph, (x, y), glyph.split()[3])
    return slide

def make_avatar_slide():
    slide = Image.new("RGB", (w, h), bg_color)
    slide.paste(source, (0, 0), source.split()[3])
    return slide

# Build static slides
raw_slides = [
    make_emoji_slide("📄"),
    make_emoji_slide("✉️"),
    make_emoji_slide("✍️"),
    make_avatar_slide(),
]

# Easing
def ease_in_out(t):
    return t * t * (3 - 2 * t)

HOLD_MS       = 1800   # ms each slide is shown
TRANSITION_MS = 1000    # ms for the slide transition
T_FRAMES      = 20     # frames in each transition
T_FRAME_MS    = TRANSITION_MS // T_FRAMES

def slide_frame(slide_a, slide_b, t):
    """Composite: a exits left, b enters from right."""
    offset_a = -int(ease_in_out(t) * w)
    offset_b =  int((1 - ease_in_out(t)) * w)
    canvas = Image.new("RGB", (w, h), bg_color)
    canvas.paste(slide_a, (offset_a, 0))
    canvas.paste(slide_b, (offset_b, 0))
    return canvas

frames    = []
durations = []
n = len(raw_slides)

for i in range(n):
    # Hold current slide
    frames.append(raw_slides[i])
    durations.append(HOLD_MS)

    # Transition to next slide
    next_i = (i + 1) % n
    for tf in range(1, T_FRAMES + 1):
        t = tf / T_FRAMES
        frames.append(slide_frame(raw_slides[i], raw_slides[next_i], t))
        durations.append(T_FRAME_MS)

frames[0].save(
    "images/avatar_animated.gif",
    save_all=True,
    append_images=frames[1:],
    duration=durations,
    loop=0,
    optimize=False,
)

# APNG — requires RGBA frames
rgba_frames = [f.convert("RGBA") for f in frames]
rgba_frames[0].save(
    "images/avatar_animated.png",
    save_all=True,
    append_images=rgba_frames[1:],
    duration=durations,
    loop=0,
    format="PNG",
)

gif_check  = Image.open("images/avatar_animated.gif")
apng_check = Image.open("images/avatar_animated.png")
print(f"GIF:  {gif_check.n_frames} frames")
print(f"APNG: {apng_check.n_frames} frames  (is_animated={apng_check.is_animated})")
