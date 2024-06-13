<a name="v1.4.0"></a>
## v1.4.0 (2024-06-13)


#### Features

*   Temporary workaround for cli/cli#9160 ([8eb0663c](https://github.com/Frederick888/gh-ph/commit/8eb0663c0e8aadc827c88428f56cba2e85b39ec0))



<a name="v1.3.7"></a>
## v1.3.7 (2023-11-01)


#### Bug Fixes

*   Use gh pr checkout instead of relying on actions/checkout ([17b49448](https://github.com/Frederick888/gh-ph/commit/17b49448caa9ba91af270d76d5f75bba1e53b679))



<a name="v1.3.6"></a>
## v1.3.6 (2023-06-09)


#### Bug Fixes

*   Use PR ID to call gh-cli in Actions ([7ff460c3](https://github.com/Frederick888/gh-ph/commit/7ff460c31b1e4cafdb3189e5b3b4031eadabcd68))



<a name="v1.3.5"></a>
## v1.3.5 (2023-06-09)


#### Bug Fixes

*   Fix no current branch error for PRs from forks ([fd0ad189](https://github.com/Frederick888/gh-ph/commit/fd0ad18924ef1a3f8d6676f8179fad50bf720003))



<a name="v1.3.4"></a>
## v1.3.4 (2023-06-09)


#### Bug Fixes

*   Check out pull/[id]/merge for PRs from forks ([bdef7fca](https://github.com/Frederick888/gh-ph/commit/bdef7fca09257698841fd314efeb8fa0b67bcf01))



<a name="v1.3.3"></a>
## v1.3.3 (2023-04-14)


#### Bug Fixes

*   Vim detection when ps -o comm= prints full path ([d743ada1](https://github.com/Frederick888/gh-ph/commit/d743ada19be2ccb7411d892f45a474c9315c0f97))



<a name="v1.3.2"></a>
## v1.3.2 (2022-12-12)


#### Bug Fixes

*   Retain leading & trailing spaces ([0f44d6f4](https://github.com/Frederick888/gh-ph/commit/0f44d6f495c8b5cda12faacaadc4f56ca7163170))



<a name="v1.3.1"></a>
## v1.3.1 (2022-09-26)


#### Bug Fixes

*   Avoid silent failures in subshells ([a0100bf4](https://github.com/Frederick888/gh-ph/commit/a0100bf4656ee7bcb8e6dddb62cd4ba06cf20def))
*   macOS paste command requires hyphon for stdin ([cfe487be](https://github.com/Frederick888/gh-ph/commit/cfe487bef831827a8b69d3640640bea8776f6df0))
*   Replace |& with 2>&1 | for macOS compatibility ([98b063e9](https://github.com/Frederick888/gh-ph/commit/98b063e94f50cbd8eba8c008e9ed1e8ccb20f003))



<a name="v1.3.0"></a>
## v1.3.0 (2022-09-23)


#### Features

*   Add debugging mode option ([bd23ab6e](https://github.com/Frederick888/gh-ph/commit/bd23ab6e628a29488c83a0f8b2a922be18466536))

#### Performance

*   Cache gh template result ([8bf1db71](https://github.com/Frederick888/gh-ph/commit/8bf1db717f4ad26b013a166ed144f9be21e11cc9))



<a name="v1.2.0"></a>
## v1.2.0 (2022-09-22)


#### Features

*   Preprocess git-log format with gh template ([324f8e6e](https://github.com/Frederick888/gh-ph/commit/324f8e6eb679f795e12d84c29c10df4e12a09394))



<a name="v1.1.1"></a>
## v1.1.1 (2022-09-22)


#### Bug Fixes

*   Remove spaces from PID in Vim detection ([377d7d16](https://github.com/Frederick888/gh-ph/commit/377d7d163ee3a238c9371355fc5103d6babb164a))



<a name="v1.1.0"></a>
## v1.1.0 (2022-09-21)


#### Bug Fixes

*   Use common ancestor as history base ([3e16fca6](https://github.com/Frederick888/gh-ph/commit/3e16fca61495c5da8fa25e652cc34bef7145c7e8))

#### Features

*   Support format fences ([28d6e904](https://github.com/Frederick888/gh-ph/commit/28d6e904c5a692c99599aa1405fb10f50e8796a7), closes [#2](https://github.com/Frederick888/gh-ph/issues/2))



<a name="v1.0.2"></a>
## v1.0.2 (2022-09-20)




<a name="v1.0.1"></a>
## v1.0.1 (2022-09-20)


#### Bug Fixes

*   Fix using major version tag in GitHub Actions ([84e96573](https://github.com/Frederick888/gh-ph/commit/84e96573dcf11309ea2db1ac3235b76ca922e0ff))



<a name="v1.0.0"></a>
## v1.0.0 (2022-09-20)


#### Features

*   Allow using in GitHub Actions ([fcfe9a93](https://github.com/Frederick888/gh-ph/commit/fcfe9a93e02057f5449be47917b5cdd44425d78c))
*   Initial version ([f3e189d0](https://github.com/Frederick888/gh-ph/commit/f3e189d01089d264bf3720240a966b131ba19f79))

#### Bug Fixes

*   Update GitHub Action name ([0105c9f3](https://github.com/Frederick888/gh-ph/commit/0105c9f3e8454dda6dbeeb032ba6e7aec437ec7f))



