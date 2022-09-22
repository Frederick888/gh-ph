set shell := ["bash", "+u", "-c"]

release version:
    set -e
    @if [[ "{{version}}" == v* ]]; then printf 'Must not have v-prefix\n'; exit 1; fi
    # changelog
    if [[ "{{version}}" != *"-"* ]]; then \
        last_tag="$(git tag -l --sort version:refname | tail -n1)"; \
        clog --from="$last_tag" --setversion=v{{version}} -o ./CHANGELOG.md; \
        git add ./CHANGELOG.md; \
    fi
    # commit and tag
    git status
    git diff --exit-code
    if [[ "{{version}}" != *"-"* ]]; then \
        git commit -m 'chore: Bump version to {{version}}'; \
    fi
    git tag v{{version}};
    git tag -d "v$(printf '{{version}}' | cut -d '.' -f 1)" || true

# vim: set filetype=just :
