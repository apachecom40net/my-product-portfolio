#!/usr/bin/env bash
set -euo pipefail

# ── config ────────────────────────────────────────────────────────────────────
SRC="${1:-ordering-guides/pdf}"
DEST="${2:-ordering-guides/markdown}"

mkdir -p "${DEST}"

CONVERTED=0
FAILED=0

echo "Converting PDFs in ${SRC} → ${DEST}"
echo "══════════════════════════════════════════════"

for PDF in "${SRC}"/*.pdf; do
  [[ -f "${PDF}" ]] || { echo "No PDFs found in ${SRC}"; exit 1; }

  BASENAME=$(basename "${PDF}" .pdf)
  OUT="${DEST}/${BASENAME}.md"

  echo "──────────────────────────────────────────────"
  echo "  Input  : ${PDF}"
  echo "  Output : ${OUT}"

  ERROR_LOG="${OUT}.err"

  if markitdown "${PDF}" > "${OUT}" 2>"${ERROR_LOG}"; then
    SIZE=$(du -h "${OUT}" | cut -f1)
    echo "  ✅  Converted (${SIZE})"
    rm -f "${ERROR_LOG}"
    (( CONVERTED++ )) || true
  else
    echo "  ❌  Failed — reason:"
    cat "${ERROR_LOG}" || echo "  (no error output)"
    rm -f "${OUT}" "${ERROR_LOG}"
    (( FAILED++ )) || true
  fi
done

echo ""
echo "══════════════════════════════════════════════"
echo "  Converted : ${CONVERTED}"
echo "  Failed    : ${FAILED}"
echo "  Output dir: ${DEST}"
echo "══════════════════════════════════════════════"

[[ "${CONVERTED}" -gt 0 ]] || { echo "ERROR: no files converted"; exit 1; }
