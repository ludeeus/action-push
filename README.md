# PUSH

[![BuyMeCoffee][buymecoffeebedge]][buymecoffee]

_Push the updated workspace back to the repository._

## Example

```
workflow "Push it!" {
  on = "push"
  resolves = ["push"]
}

action "push" {
  uses = "ludeeus/action-push@master"
  env = {
    ACTION_MAIL = "octocat@octocat.org"
    ACTION_NAME = "octocat"
    ACTION_BRANCH = "master"
    ACTION_MESSAGE = "Action commit"
  }
  secrets = ["GITHUB_TOKEN"]
}
```

**REQUIRE GITHUB_TOKEN.**

## ENV VARS

ENV | description
-- | --
`ACTION_MAIL` | Email used for the commit.
`ACTION_NAME` | Name used for the commit.
`ACTION_BRANCH` | Branch name to push against. _(defaults to `master`)_
`ACTION_MESSAGE` | Message used in the commit. _(defaults to `'Automated commit'`)_

[buymecoffee]: https://www.buymeacoffee.com/ludeeus
[buymecoffeebedge]: https://camo.githubusercontent.com/cd005dca0ef55d7725912ec03a936d3a7c8de5b5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6275792532306d6525323061253230636f666665652d646f6e6174652d79656c6c6f772e737667
