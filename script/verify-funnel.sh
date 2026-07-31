#!/usr/bin/env bash
# Verifies the AppExchange onboarding funnel against the built site.
# Run after: bundle exec jekyll build
set -uo pipefail
cd "$(dirname "$0")/.."

fails=0

pass() { printf '  \033[32mPASS\033[0m  %s\n' "$1"; }
fail() { printf '  \033[31mFAIL\033[0m  %s\n' "$1"; fails=$((fails + 1)); }

# desc, pattern, path — pattern must NOT appear.
# The missing-target guard matters: without it, grep on a file that does not
# exist returns non-zero and this reports a false PASS.
check_absent() {
  if [ ! -e "$3" ]; then fail "$1 (target missing: $3)"; return; fi
  if grep -rqF -- "$2" "$3" 2>/dev/null; then fail "$1"; else pass "$1"; fi
}

# desc, pattern, path — pattern MUST appear
check_present() {
  if grep -rqF -- "$2" "$3" 2>/dev/null; then pass "$1"; else fail "$1"; fi
}

# desc, path
check_file() {
  if [ -f "$2" ]; then pass "$1"; else fail "$1"; fi
}

if [ ! -d _site ]; then
  echo "_site/ not found. Run: bundle exec jekyll build" >&2
  exit 1
fi

echo
# Matched by URL shape, not by package ID. This file is committed to a public
# repo, so it must not contain the ID it is guarding against.
echo "== package install links must not be published =="
check_absent "no installPackage links" "installPackage.apexp" _site/
check_absent "login.salesforce.com/packaging absent" "login.salesforce.com/packaging" _site/
check_absent "test.salesforce.com/packaging absent" "test.salesforce.com/packaging" _site/
check_absent "no 04t package IDs of any kind" "p0=04t" _site/

echo
echo "== /get-started/ exists and can capture a lead =="
check_file    "/get-started/ built" _site/get-started/index.html
check_present "posts to formspree" "formspree.io" _site/get-started/index.html
check_present "mailto fallback" "mailto:appexchange@silkquote.com" _site/get-started/index.html
check_present "edition select" 'name="salesforce_edition"' _site/get-started/index.html
check_present "work email field" 'name="_replyto"' _site/get-started/index.html
check_present "source tracking field" 'name="source"' _site/get-started/index.html
check_absent  "formspree endpoint filled in" "REPLACE_ME" _site/get-started/index.html

echo
echo "== /install/ is instructions-only =="
check_file    "/install/ built" _site/install/index.html
check_absent  "no env picker" 'name="install_env"' _site/install/index.html
check_absent  "no install button" 'id="install-now-btn"' _site/install/index.html
check_present "links to /get-started/" "/get-started/" _site/install/index.html

echo
echo "== CTAs point at /get-started/ =="
check_present "homepage hero + pricing" "/get-started/" _site/index.html
check_present "mou-quotes CTA" "/get-started/" _site/mou-quotes/index.html
check_present "quotation-generator CTA" "/get-started/" _site/quotation-generator/index.html

echo
echo "== SEO =="
check_present "ContactPage schema on /get-started/" '"ContactPage"' _site/get-started/index.html
check_present "llms.txt lists Get Started" "/get-started/" _site/llms.txt

echo
if [ "$fails" -gt 0 ]; then
  printf '\033[31m%s check(s) failed.\033[0m\n\n' "$fails"
  exit 1
fi
printf '\033[32mAll checks passed.\033[0m\n\n'
