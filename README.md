# GitHub PR History

`gh-ph` is a [`gh`](https://github.com/cli/cli) extension that puts commit history into your pull request description.

# Install

`gh extension install Frederick888/gh-ph`

## Dependencies

- [`jq`](https://github.com/stedolan/jq)
- [`bat`](https://github.com/sharkdp/bat)

# Usage

## Command line

Add two `=== GH HISTORY FENCE ===` lines into your PR description. The commit history will be placed between the two fences when you run `gh ph`.

For example,

```markdown
## Description

Super duper fantastic feature.

## Changes

<!-- === GH HISTORY FENCE === -->

<!-- === GH HISTORY FENCE === -->
```

## GitHub Actions

Add the fences to your pull request templates, then set up a job as below:

```yaml
jobs:
  gh-ph:
    name: Add commit history to pull request description
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0
      - uses: Frederick888/gh-ph@v1
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

# Configuration

Default history format can be configured via environment variable `GH_PH_HISTORY_FORMAT`.

Per template/section formats can be configured using inline format fences. For example,

```markdown
# Overview
<!-- === GH HISTORY FORMAT FENCE === --> <!--
- %s
--> <!-- === GH HISTORY FORMAT FENCE === -->
<!-- === GH HISTORY FENCE === -->
<!-- === GH HISTORY FENCE === -->

# Details
<!-- === GH HISTORY FORMAT FENCE === --> <!--
### %H %s%n%n%b%n
--> <!-- === GH HISTORY FORMAT FENCE === -->
<!-- === GH HISTORY FENCE === -->
<!-- === GH HISTORY FENCE === -->
```
