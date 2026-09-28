# Herdr Keyboard Shortcuts

```laptop-layout
herdr 0.9.1   prefix = ^b  (same as tmux)

^b x  =  press ctrl+b, release, then press x
^b ⇧x =  press ctrl+b, release, then shift+x

^b ?  shows the live list of bindings
^b ⇧r reloads ~/.config/herdr/config.toml
```

- [herdr.dev](https://herdr.dev)
- [herdr on GitHub](https://github.com/herdrdev/herdr)
- [herdr-file-viewer plugin](https://github.com/smarzban/herdr-file-viewer)

---

## Jeff's Goto

| Key Seq | Result |
|---|---|
| `^b` `?` | Help / show all keybindings |
| `^b` `b` | Toggle sidebar |
| `^b` `w` | Workspace picker |
| `^b` `1`..`9` | Switch to tab N |
| `^b` `v` | Split vertical (side by side) |
| `^b` `-` | Split horizontal (stacked) |
| `^b` `h` / `j` / `k` / `l` | Focus pane left / down / up / right |
| `^b` `z` | Zoom (fullscreen) the pane |
| `^b` `o` | Jump to the target of the latest notification |
| `^b` `f` | Open file viewer in a split |
| `^b` `⇧f` | Open file viewer in a new tab |

---

## Session and General

| Key Seq | Result |
|---|---|
| `^b` `?` | Help / show all keybindings |
| `^b` `s` | Settings |
| `^b` `q` | Detach (session keeps running) |
| `^b` `⇧r` | Reload config |
| `^b` `o` | Jump to the target of the latest notification |
| `^b` `b` | Toggle sidebar |
| `^v` | Paste image (only in herdr --remote) |

---

## Workspaces and Worktrees

| Key Seq | Result |
|---|---|
| `^b` `w` | Workspace picker |
| `^b` `g` | Go to (navigate mode) |
| `^b` `⇧n` | New workspace |
| `^b` `⇧g` | New git worktree |
| `^b` `⇧w` | Rename workspace |
| `^b` `⇧d` | Close workspace (asks to confirm) |

---

## Tabs

| Key Seq | Result |
|---|---|
| `^b` `c` | New tab |
| `^b` `⇧t` | Rename tab |
| `^b` `p` | Previous tab |
| `^b` `n` | Next tab |
| `^b` `1`..`9` | Switch to tab N |
| `^b` `⇧x` | Close tab |

---

## Panes

| Key Seq | Result |
|---|---|
| `^b` `v` | Split vertical (side by side) |
| `^b` `-` | Split horizontal (stacked) |
| `^b` `h` / `j` / `k` / `l` | Focus pane left / down / up / right |
| `^b` `⇥` | Cycle to next pane |
| `^b` `⇧⇥` | Cycle to previous pane |
| `^b` `z` | Zoom (fullscreen) the pane |
| `^b` `r` | Resize mode |
| `^b` `x` | Close pane |
| `^b` `⇧p` | Rename pane |
| `^b` `e` | Edit scrollback in $EDITOR |

---

## Navigate Mode (after ^b g)

| Key Seq | Result |
|---|---|
| `↑` / `↓` | Move between workspaces |
| `h` / `j` / `k` / `l` | Focus pane left / down / up / right |
| `←` / `→` | Always focus pane left / right |

---

## File Viewer: Open (custom bindings)

| Key Seq | Result |
|---|---|
| `^b` `f` | Open file viewer in a split |
| `^b` `⇧f` | Open file viewer in a new tab |

---

## File Viewer: Inside the Viewer

| Key Seq | Result |
|---|---|
| `j` / `k` | Move tree cursor (scroll when content focused) |
| `h` / `l` | Collapse / expand tree node |
| `⇥` | Move focus between tree and content |
| `Enter` | Open file zoomed |
| `z` / `⇧z` | Toggle zoom / fullscreen the herdr pane |
| `f` | Fuzzy go-to-file |
| `/` | Search in file |
| `n` / `⇧n` | Next / previous match |
| `:` | Go to line |
| `]` / `[` | Next / previous changed file |
| `c` | Changed-files-only filter (against active baseline) |
| `d` | Git-status mode (working-tree diffs) |
| `b` | Flip diff baseline (merge-base / HEAD) |
| `v` | Cycle view mode |
| `⇧d` | Cycle diff presentation (unified / side-by-side / plain) |
| `w` | Toggle line wrap |
| `e` | Open in $EDITOR |
| `y` / `⇧y` | Copy relative / absolute path |
| `⇧l` | Line-select mode (copy file:line refs or content) |
| `p` | Pin preview |
| `i` / `.` | Toggle gitignored / hidden files |
| `?` | Help |
| `q` / `Esc` | Back out / close viewer |

---

## Review a Batch of Claude Edits

| Key Seq | Result |
|---|---|
| `git add -N .` | 1. Give untracked files a baseline so diffs exist |
| `^b` `f` | 2. Open the file viewer |
| `d` | 3. Git-status mode: only changed files, working-tree diffs |
| `]` / `[` | 4. Walk the changed files one at a time |
| `⇧d` | 5. Side-by-side for dense changes |

---

## CLI Commands

| Command | Result |
|---|---|
| `herdr` | Start herdr |
| `herdr server reload-config` | Reload config without the keybinding |
| `herdr --default-config` | Print the full default config |
| `herdr config reset-keys` | Back up config.toml and remove custom bindings |
| `herdr plugin list` | Show installed plugins and pinned commits |
