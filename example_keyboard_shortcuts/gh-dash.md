# gh-dash Keyboard Shortcuts

- [gh-dash](https://github.com/dlvhdr/gh-dash)
- [gh-dash keybindings docs](https://www.gh-dash.dev/getting-started/keybindings/)

Defaults from gh-dash v4.26.0 source, merged with ~/.config/gh-dash/config.yml.
Custom command keys win over builtins with the same key.

---

## My Custom Keys

| Key Seq | Result |
|---|---|
| `g` | lazygit in the repo (all views, replaces "first item") |
| `O` | Check out the PR branch into repoPath (gh pr checkout) |
| `C` | New herdr tab, nvim, :Octo pr edit N (PR conversation buffer) |
| `a` | git add -A in the repo, then lazygit (replaces "assign" in PRs) |
| `v` | Approve with a comment prompt (needs gum: brew install gum) |

---

## Navigation

| Key Seq | Result |
|---|---|
| `j` / `↓` | Move down |
| `k` / `↑` | Move up |
| `Home` | First item (`g` is lazygit in my config) |
| `G` / `End` | Last item |
| `l` / `→` | Next section |
| `h` / `←` | Previous section |
| `^d` | Preview page down |
| `^u` | Preview page up |

---

## Global

| Key Seq | Result |
|---|---|
| `p` | Toggle preview |
| `P` | Toggle preview position |
| `o` | Open in GitHub |
| `r` | Refresh current section |
| `R` | Refresh all sections |
| `/` | Search |
| `y` | Copy number |
| `Y` | Copy URL |
| `^s` `n` | New section |
| `^s` `x` | Remove section |
| `?` | Help |
| `q` / `^c` | Quit |

---

## Selected PR

| Key Seq | Result |
|---|---|
| `[` | Previous sidebar tab |
| `]` | Next sidebar tab |
| `e` | Expand description |
| `d` | Diff |
| `c` | Comment |
| `A` | Unassign |
| `L` | Label |
| `m` | Merge |
| `u` | Update PR from base branch |
| `w` | Watch checks |
| `V` | Approve all workflows |
| `W` | Ready for review |
| `x` | Close |
| `X` | Reopen |
| `t` | Toggle smart filtering |
| `s` | Switch to issues |

---

## Selected Issue

| Key Seq | Result |
|---|---|
| `c` | Comment |
| `a` | Assign |
| `A` | Unassign |
| `L` | Label |
| `C` | Checkout |
| `x` | Close |
| `X` | Reopen |
| `t` | Toggle smart filtering |
| `s` | Switch to notifications |

---

## Selected Notification

| Key Seq | Result |
|---|---|
| `Enter` | View notification |
| `Esc` | Back to notification |
| `m` | Mark as read |
| `M` | Mark all as read |
| `D` | Mark as done |
| `⌥d` | Mark all as done |
| `u` | Unsubscribe |
| `b` | Toggle bookmark |
| `o` | Open in browser |
| `S` | Sort by repo |
| `t` | Toggle smart filtering |
| `s` | Switch to PRs |

---

## Repo Branches View

| Key Seq | Result |
|---|---|
| `C` / `Space` | Checkout |
| `n` | New branch |
| `O` | Create PR |
| `f` | Fast-forward |
| `P` | Push |
| `F` | Force-push |
| `d` / `Backspace` | Delete |
| `u` | Update PR |
| `s` | Switch to PRs |
