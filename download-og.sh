#!/usr/bin/env bash
set -euo pipefail

# ── config ────────────────────────────────────────────────────────────────────
BASE_URL="https://www.fortinet.com/content/dam/fortinet/assets/data-sheets"
DEST="${1:-ordering-guides}"   # optional first arg overrides output dir

# ── ordering guides ───────────────────────────────────────────────────────────
# Source: docs.fortinet.com/ordering-guides
# Note: no inline comments inside the array — zsh does not treat # as a
# comment character inside array literals unless INTERACTIVE_COMMENTS is set.
GUIDES=(
  "og-fortiappsec.pdf"
  "og-fortiweb.pdf"
  "og-fortiadc.pdf"
  "og-forticnapp.pdf"
  "og-forticasb-sspm.pdf"
)

# FortiAppSec Cloud (WAF + API Security)  → og-fortiappsec.pdf
# FortiWeb (WAF appliance/VM)             → og-fortiweb.pdf
# FortiADC (Application Delivery)         → og-fortiadc.pdf
# FortiCNAPP (Cloud-Native App Protect.)  → og-forticnapp.pdf
# FortiCASB SSPM (SaaS Sec. Posture Mgmt) → og-forticasb-sspm.pdf

# ── setup ─────────────────────────────────────────────────────────────────────
mkdir -p "${DEST}"

DOWNLOADED=0
FAILED=0

# ── download loop ─────────────────────────────────────────────────────────────
for FILE in "${GUIDES[@]}"; do
  URL="${BASE_URL}/${FILE}"
  DEST_FILE="${DEST}/${FILE}"
  TMP_FILE="${DEST_FILE}.tmp"

  echo "──────────────────────────────────────────────"
  echo "  File : ${FILE}"
  echo "  URL  : ${URL}"

  HTTP_CODE=$(curl \
    --silent \
    --show-error \
    --location \
    --max-time 60 \
    --retry 3 \
    --retry-delay 5 \
    --retry-connrefused \
    --dump-header "${TMP_FILE}.headers" \
    --output "${TMP_FILE}" \
    --write-out "%{http_code}" \
    --user-agent "Mozilla/5.0 (compatible; GitHubActions/1.0)" \
    "${URL}" \
  )

  # print headers for diagnostics
  if [[ -f "${TMP_FILE}.headers" ]]; then
    echo "  Headers:"
    cat "${TMP_FILE}.headers"
    rm -f "${TMP_FILE}.headers"
  fi

  if [[ "${HTTP_CODE}" == "200" ]] && [[ -s "${TMP_FILE}" ]]; then
    FTYPE=$(file --brief "${TMP_FILE}")
    echo "  File type : ${FTYPE}"

    if echo "${FTYPE}" | grep -qi "pdf"; then
      mv "${TMP_FILE}" "${DEST_FILE}"
      SIZE=$(du -h "${DEST_FILE}" | cut -f1)
      echo "  ✅  OK (${SIZE})"
      (( DOWNLOADED++ )) || true
    else
      echo "  Response body (first 500 bytes):"
      head -c 500 "${TMP_FILE}" || true
      rm -f "${TMP_FILE}"
      echo "  ⚠️   HTTP ${HTTP_CODE} but not a PDF (got: ${FTYPE}) — skipped"
      (( FAILED++ )) || true
    fi
  else
    echo "  Response body (first 500 bytes):"
    head -c 500 "${TMP_FILE}" 2>/dev/null || echo "  (empty)"
    rm -f "${TMP_FILE}"
    echo "  ❌  Failed — HTTP ${HTTP_CODE}"
    (( FAILED++ )) || true
  fi
done

# ── summary ───────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════"
echo "  Downloaded : ${DOWNLOADED} / ${#GUIDES[@]}"
echo "  Failed     : ${FAILED}"
echo "  Output dir : ${DEST}"
echo "══════════════════════════════════════════════"

[[ "${DOWNLOADED}" -gt 0 ]] || { echo "ERROR: no files downloaded"; exit 1; }
