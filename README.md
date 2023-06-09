# GitHub PR History

`gh-ph` is a [`gh`](https://github.com/cli/cli) extension and a GitHub Action that puts commit history into your pull request description.

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

First, visit your repository's Settings -> Actions -> General, and select 'Read and write permissions' in 'Workflow permissions'.

Then add the fences to your pull request templates, and finally set up a job as below:

```yaml
on:
  pull_request:

permissions:
  contents: read
  pull-requests: write

jobs:
  gh-ph:
    name: Add commit history to pull request description
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 100
      - run: |
          git remote set-branches origin '*'
          git fetch --depth 100
      - uses: Frederick888/gh-ph@v1
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

# Configuration

Default history format can be configured via environment variable [`GH_PH_HISTORY_FORMAT`](https://github.com/Frederick888/gh-ph/blob/1a9fe6f74a6067559885246a67f1d1df9366252c/gh-ph#L12) ([`with.format`](https://github.com/Frederick888/gh-ph/blob/1a9fe6f74a6067559885246a67f1d1df9366252c/action.yml#L8-L11) in Actions).

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
### [`%h`]({{.url}}/commits/%H) %s%n%n%b%n
--> <!-- === GH HISTORY FORMAT FENCE === -->
<!-- === GH HISTORY FENCE === -->
<!-- === GH HISTORY FENCE === -->
```

By default it runs history format through [gh format](https://cli.github.com/manual/gh_help_formatting) then [Git pretty formats](https://git-scm.com/docs/pretty-formats).
