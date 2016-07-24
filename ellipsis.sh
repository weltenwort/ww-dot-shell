#!/usr/bin/env bash
#
# weltenwort/ww-dot-shell ellipsis package

readonly ZGEN_PATH="${HOME}/.zgen"

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
    git.clone https://github.com/tarjoilija/zgen.git "${ZGEN_PATH}"
}

# pkg.push() {
#     git.push
# }

pkg.pull() {
    hooks.pull

    git.pull "${ZGEN_PATH}"
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
