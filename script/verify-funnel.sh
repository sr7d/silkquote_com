#!/usr/bin/env bash
# Verifies the AppExchange install funnel against the built site.
# Install links are published, so the checks guard the trial disclosure that
# must travel with them: a link without the expiry stated is the failure mode.
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
# Matched by URL shape, not by package ID, so this file stays free of the ID.
echo "== package install links are published on /install/ =="
check_present "production install link" "login.salesforce.com/packaging" _site/install/index.html
check_present "sandbox install link" "test.salesforce.com/packaging" _site/install/index.html
check_absent  "install links stay on /install/" "installPackage.apexp" _site/index.html

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
echo "== /install/ offers a self-serve install =="
check_file    "/install/ built" _site/install/index.html
check_present "env picker" 'name="install_env"' _site/install/index.html
check_present "install button" 'id="install-now-btn"' _site/install/index.html
check_present "links to /get-started/" "/get-started/" _site/install/index.html

echo
echo "== the trial expiry is disclosed wherever we offer the install =="
check_present "trial length on /install/" "60-day trial" _site/install/index.html
check_present "expiry stated on /install/" "license expires" _site/install/index.html
check_present "extension offered on /install/" "extending is just a conversation" _site/install/index.html
check_present "trial length on /get-started/" "free for 60 days" _site/get-started/index.html
check_present "trial length in pricing" "Free for 60 days" _site/index.html
check_absent  "no free-forever claim in pricing" "No trial" _site/index.html
check_absent  "no no-expiration claim in pricing" "no expiration" _site/index.html

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
