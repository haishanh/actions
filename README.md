## Usage

```workflow
action "Deploy" {
  uses = "haishanh/actions/gh-pages"
  needs = ["Build"]
  secrets = ["TOKEN"]
}
```

env

| env           | required | default value | description |
| ------------- | -------- | ------------- | ----------- |
| `PUBLISH_DIR` | N        | `public`      |             |
| `BRANCH`      | N        | `gh-pages`    |             |

secrets

| env     | required | default value | description |
| ------- | -------- | ------------- | ----------- |
| `TOKEN` | Y        | N/A           |             |

Note, you should use a GitHub personal access token with `repo` permission checked. (The secret env var `GITHUB_TOKEN` set [by GitHub action](https://developer.github.com/actions/creating-github-actions/accessing-the-runtime-environment/#environment-variables) is a "GitHub App installation token", which can not be used trigger a gh-pages build.
