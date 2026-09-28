# Octo Review Flow (gh-dash + Octo.nvim)

- [octo.nvim README](https://github.com/pwntester/octo.nvim)
- [gh-dash](https://github.com/dlvhdr/gh-dash)

```laptop-layout
Space = <leader> = <localleader>

gh-dash         O checkout   C open in nvim
  │
  ▼
Octo PR buffer
  │  :Octo review   (start or resume)
  ▼
Review tab  [ files | base old | head new ]
  │  ]q [q files     ]t [t threads
  │  Space c a  comment, then :w (pending)
  ▼
Open File ( see entire file in new tab )
  │  <leader> o f  Open File 
  ▼
Space v s   type summary, Esc, then
  ^m comment   ^a approve   ^r request chg
  ▼
Posted on GitHub.  ^c closes review tab
```

## gh-dash

| Key Seq | Result |
|---|---|
| `O` | Check out the PR branch into repoPath (gh pr checkout) |
| `C` | New herdr tab, nvim, :Octo pr edit N (PR conversation buffer) |
| `v` | Quick approve (needs gum: brew install gum) |

---

## Start a Review

| Command | Result |
|---|---|
| `:Octo review` | Start a review, or resume a pending one |
| `:Octo review resume` | Come back to a pending review later |

---

## Navigate the Review

| Key Seq | Result |
|---|---|
| `]q` / `[q` | Next / previous changed file |
| `]u` / `[u` | Next / previous unviewed file |
| `]t` / `[t` | Next / previous comment thread |
| `Space` `Space` | Mark file as viewed |
| `Space` `e` | Focus the file panel |
| `Space` `b` | Hide / show the file panel |

---

## Open the Real File at the Diff Line

| Key Seq | Result |
|---|---|
| `Space` `of` | Open file at the cursor line in a new tab |

---

## Comment on the Line

| Key Seq | Result |
|---|---|
| `Space` `c` `a` | Add review comment on cursor line (or V selection) |
| `Space` `s` `a` | Add a suggestion (GitHub suggested change block) |
| `:w` | Save the comment in the thread buffer (stays pending until submit) |
| `Space` `c` `d` | Delete a comment (in thread) |
| `Space` `c` `r` | Reply in an existing thread |
| `Space` `r` `t` | Resolve a thread |
| `Space` `r` `T` | Unresolve a thread |
| `:Octo review comments` | List pending comments (Enter to jump) |

---

## Submit the Review

| Key Seq | Result |
|---|---|
| `Space` `v` `s` | Open the submit float (or :Octo review submit) |
| `Esc` | Leave insert mode after typing the summary |
| `^` `m` | Submit as comment (no approval) |
| `^` `a` | Approve |
| `^` `r` | Request changes |
| `^` `c` | Close without submitting (review stays pending) |

---

## Find the Octo Keystrokes

| How | Result |
|---|---|
| `Space` (wait) | which-key popup of the buffer's Space mappings |
| `:Octo actions` | Telescope picker of every Octo action |
| `:nmap <buffer>` | Raw list of mappings on the current buffer |
| `:help octo` | Full docs (:help octo-pr-review for reviews) |

---

## Gotchas

| Key Seq | Result |
|---|---|
| `Space` `v` `d` | Review diff: DISCARDS the whole pending review. PR buffer: removes a reviewer |
| `Enter` | In the submit float, same as ^m: submits as comment |
