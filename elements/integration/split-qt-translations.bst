# SPDX-FileCopyrightText: 2026 Cajus Pollmeier <pollmeier@gonicus.de>
# SPDX-License-Identifier: MIT

kind: stack
description: |
  Move Qt translation files (qm) and QtWebEngine language files (pak) into
  per-language locale tree structure, so that they are sorted into the
  Locale extension instead of being placed in the main Runtime. Keep
  'en' as a fallback.

depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

public:
  bst:
    integration-commands:
    - |
      targetdir="%{datadir}/runtime/locale"
      trdir="%{prefix}/translations"

      movetranslation() {
        file="$1"
        lang="$2"
        [ "${lang}" = C ] || [ "${lang}" = en ] && return
        subdir="$(dirname "${file#%{prefix}/}")"
        dest="${targetdir}/${lang}/${subdir}"
        mkdir -p "${dest}"
        mv "${file}" "${dest}/"
        ln -s "$(realpath --relative-to="$(dirname "${file}")" "${dest}/$(basename "${file}")")" "${file}"
      }

      # Qt translations
      for file in "${trdir}"/*.qm; do
        [ -f "${file}" ] && [ ! -L "${file}" ] || continue
        name="$(basename "${file}" .qm)"
        base="${name%_[A-Z][A-Z]}"
        lang="${base##*_}"
        [ "${lang}" != "${base}" ] || continue
        [ -n "${lang}" ] || continue
        movetranslation "${file}" "${lang}"
      done

      # QtWebEngine (Chromium) locale packs
      for file in "${trdir}"/qtwebengine_locales/*.pak; do
        [ -f "${file}" ] && [ ! -L "${file}" ] || continue
        lang="$(basename "${file}" .pak)"
        movetranslation "${file}" "${lang%%-*}"
      done
