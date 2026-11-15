# Herdr Keyboard Shortcuts

```laptop-layout
prefix = ^␣ (ctrl+space)   same keymap on megan and lucy

^␣ x  =  press ctrl+space, release, then press x
^␣ ⇧x =  press ctrl+space, release, then shift+x

^␣ ?  shows the live list of bindings
^␣ ⇧r reloads ~/.config/herdr/config.toml

Everything else is herdr's default keymap. herdr --remote
uses the local machine's keys, so megan -> lucy is identical.
```

- [herdr.dev](https://herdr.dev)
- [herdr on GitHub](https://github.com/herdrdev/herdr)
- [herdr-file-viewer plugin](https://github.com/smarzban/herdr-file-viewer)

---

## Jeff's Goto

| Key Seq | Result |
|---|---|
| `^␣` `?` | Help / show all keybindings |
| `^␣` `b` | Toggle sidebar |
| `^␣` `w` | Workspace picker |
| `^␣` `1`..`9` | Switch to tab N |
| `^␣` `v` | Split vertical (side by side) |
| `^␣` `-` | Split horizontal (stacked) |
| `^␣` `h` / `j` / `k` / `l` | Focus pane left / down / up / right |
| `^␣` `z` | Zoom (fullscreen) the pane |
| `^␣` `o` | Jump to the target of the latest notification |
| `^␣` `f` | Open file viewer in a split |
| `^␣` `⇧f` | Open file viewer in a new tab |

---

## Session and General

| Key Seq | Result |
|---|---|
| `^␣` `?` | Help / show all keybindings |
| `^␣` `s` | Settings |
| `^␣` `q` | Detach (session keeps running) |
| `^␣` `⇧r` | Reload config |
| `^␣` `o` | Jump to the target of the latest notification |
| `^␣` `b` | Toggle sidebar |
| `^v` | Paste image (only in herdr --remote) |

---

## Workspaces and Worktrees

| Key Seq | Result |
|---|---|
| `^␣` `w` | Workspace picker |
| `^␣` `g` | Go to (navigate mode) |
| `^␣` `⇧n` | New workspace |
| `^␣` `⇧g` | New git worktree |
| `^␣` `⇧w` | Rename workspace |
| `^␣` `⇧d` | Close workspace (asks to confirm) |

---

## Tabs

| Key Seq | Result |
|---|---|
| `^␣` `c` | New tab |
| `^␣` `⇧t` | Rename tab |
| `^␣` `p` | Previous tab |
| `^␣` `n` | Next tab |
| `^␣` `1`..`9` | Switch to tab N |
| `^␣` `⇧x` | Close tab |

---

## Panes

| Key Seq | Result |
|---|---|
| `^␣` `v` | Split vertical (side by side) |
| `^␣` `-` | Split horizontal (stacked) |
| `^␣` `h` / `j` / `k` / `l` | Focus pane left / down / up / right |
| `^␣` `⇥` | Cycle to next pane |
| `^␣` `⇧⇥` | Cycle to previous pane |
| `^␣` `z` | Zoom (fullscreen) the pane |
| `^␣` `r` | Resize mode |
| `^␣` `x` | Close pane |
| `^␣` `⇧p` | Rename pane |
| `^␣` `e` | Edit scrollback in $EDITOR |
| `^␣` `[` | Copy mode (keyboard select and copy) |

---

## Navigate Mode (after ^␣ g)

| Key Seq | Result |
|---|---|
| `↑` / `↓` | Move between workspaces |
| `h` / `j` / `k` / `l` | Focus pane left / down / up / right |
| `←` / `→` | Always focus pane left / right |

---

## File Viewer: Open (custom bindings)

| Key Seq | Result |
|---|---|
| `^␣` `f` | Open file viewer in a split |
| `^␣` `⇧f` | Open file viewer in a new tab |

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
| `^␣` `f` | 2. Open the file viewer |
| `d` | 3. Git-status mode: only changed files, working-tree diffs |
| `]` / `[` | 4. Walk the changed files one at a time |
| `⇧d` | 5. Side-by-side for dense changes |

---

## CLI Commands

| Command | Result |
|---|---|
| `herdr` | Start herdr |
| `herdr server reload-config` | Reload config without the keybinding (no restart, panes keep running) |
| `make -C herdr install` | Install config.toml from jds_config (megan) or jds_config_omarchy (lucy) |
| `herdr --default-config` | Print the full default config |
| `herdr config reset-keys` | Back up config.toml and remove custom bindings |
| `herdr plugin list` | Show installed plugins and pinned commits |
