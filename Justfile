set shell := ["bash", "+u", "-c"]

release version:
    set -e
    @if [[ "{{version}}" == v* ]]; then printf 'Must not have v-prefix\n'; exit 1; fi
    # changelog
    clog -F --setversion=v{{version}} -o ./CHANGELOG.md
    git add ./CHANGELOG.md
    # commit and tag
    git status
    git diff --exit-code
    git commit -m 'chore: Bump version to {{version}}'
    git tag v{{version}}

# vim: set filetype=just :
