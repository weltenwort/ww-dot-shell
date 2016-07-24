#!/usr/bin/env bash
#
# weltenwort/ww-dot-shell ellipsis package

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
    git.clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
}

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
