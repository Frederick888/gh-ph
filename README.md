# GitHub PR History

`gh-ph` is a [`gh`](https://github.com/cli/cli) extension that puts commit history into your pull request description.

# Install

`gh extension install Frederick888/gh-ph`

## Dependencies

- [`jq`](https://github.com/stedolan/jq)
- [`bat`](https://github.com/sharkdp/bat)

# Usage

Add two `=== GH HISTORY FENCE ===` lines into your PR description. The commit history will be place between the two fences.

For example,

```markdown
## Description

Super duper fantastic feature.

## Changes

<!-- === GH HISTORY FENCE === -->

<!-- === GH HISTORY FENCE === -->
```

# Configuration

History format can be configured via environment variable `GH_PH_HISTORY_FORMAT`.
