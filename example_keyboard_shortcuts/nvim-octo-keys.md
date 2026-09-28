# nvim Octo Keys

- [octo.nvim README (commands + default keymaps)](https://github.com/pwntester/octo.nvim)
- [Reviewing GitHub Pull Requests in your Terminal](https://www.youtube.com/watch?v=0VbWVNWeo7M)
- [Use Github in Neovim - octo.nvim](https://www.youtube.com/watch?v=ERC2mn5jKnA)

```laptop-layout
    <leader> and <localleader> are both Space ␣
    Space c a  =  press Space, then c, then a
```

## Browse PRs and Issues

| Command | Result |
|---|---|
| `:Octo pr list` | Browse and open PRs (telescope, Enter to open) |
| `:Octo issue list` | Browse issues |
| `:Octo pr browser` | Open the current PR in the browser |
| `Enter` | In any octo buffer, show common actions |
| `:w` | Sync an edited title, body or comment to GitHub |

---

## Open a Specific PR

| Command | Result |
|---|---|
| `:Octo pr edit 123` | PR #123 in the current repo |
| `:Octo pr edit 123 owner/repo` | PR #123 in another repo |
| `:Octo https://github.com/owner/repo/pull/123` | Open a PR from its GitHub URL |
| `:e octo://owner/repo/pull/123` | Open a PR from any directory |
| `:Octo pr changes` | PR file changes (telescope) |
| `:Octo pr commits` | PR commits |
| `:Octo pr checkout` | Check the PR branch out locally (inside the PR buffer) |

---

## Review a PR

| Key Seq | Result |
|---|---|
| `:Octo review start` | Start reviewing the open PR |
| `:Octo review resume` | Continue a pending review |
| `]q` / `[q` | Next / previous changed file |
| `]t` / `[t` | Next / previous comment thread |
| `Space` `e` | Focus the file panel |
| `Space` `b` | Hide / show the file panel |
| `^` `e` | Copy the commit SHA (for permalinks) |

---

## Comment on the Diff

| Key Seq | Result |
|---|---|
| `Space` `c` `a` | Add a comment on the current line |
| `V` `j`/`k` then `Space` `c` `a` | Comment on a multi-line selection (must fit in one hunk) |
| `Space` `s` `a` | Add a suggested change |
| `:w` | Save the comment to the pending review |
| `:Octo review comments` | List pending comments (Enter jumps to one) |
| `:Octo comment add` | Add a general (non-line) PR comment |

---

## Submit a Review

| Key Seq | Result |
|---|---|
| `:Octo review submit` | Open the review summary float |
| `Space` `v` `s` | Open the review summary float |
| `^` `m` | Submit as comment only (after leaving insert mode) |
| `^` `a` | Approve |
| `^` `r` | Request changes |
| `:Octo review discard` | Throw the pending review away |
