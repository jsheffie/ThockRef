```laptop-layout
               .-------------.   
               | Shift ⇧     |  
               |--------.----'-----.-------.
               | ctrl ^ | option ⌥ | CMD ⌘ | 
                `-------'----------'-------'
```
Mac Keyboard Sequences


| Key Seq | RKey Seq | Result | VSCode Binding | 
|---------|----------|--------|--- | 
| ⌘ r 1   |          | Folding 1 level | ⌘ k 1 |
| ⌘ r 2   |          | Folding 2 levels | ⌘ k 2 |
| ⇧ ⌘ esc |          | Open Claude Code | | 
| ⌘ r z   |          | Toggle Zen Mode | | 


```
 .--------.  .-----.  .-----. 
| Shift ⇧ | | CMD ⌘ | | ESC |  Open Claude Code 
 `--------'  `------' `-----'
```

Right — that's Cursor's own keybinding stomping on VS Code's fold chord. Cmd+K in Cursor opens the inline AI edit prompt (their version of "edit selected code with AI"), so the Cmd+K, Cmd+1 chord never completes.

You have a few options:

Option 1: Use the menu / Command Palette instead

Cmd+Shift+P → type "Fold Level 1" (or 2, 3, etc.) → Enter. Slower but no rebinding needed.

Option 2: Rebind Cursor's inline AI to something else

Open Keyboard Shortcuts (Cmd+K Cmd+S... which also won't work — use Cmd+Shift+P → "Preferences: Open Keyboard Shortcuts"). Search for aipopup.action.modal.generate (that's Cursor's inline edit command) and change it to something like Cmd+I or Cmd+Shift+K. Then your fold chords work normally.

Option 3: Rebind the fold commands to non-chord shortcuts

In the same Keyboard Shortcuts editor, search for "Fold Level" and assign each one a single shortcut like Cmd+Option+1, Cmd+Option+2, etc. Avoids the chord problem entirely.

Option 4: Use the chord-less fold commands that already exist

These don't conflict with Cmd+K:

Shortcut	Result
Cmd+Option+[	Fold region at cursor
Cmd+Option+]	Unfold region at cursor
Cmd+K Cmd+0	Fold all (still uses chord, still broken)
Most folks doing the "fold to level N" workflow in Cursor end up going with Option 2 — rebinding the AI inline edit to Cmd+I, which is what a lot of Cursor users do anyway since Cmd+I opens Composer in some versions and feels more natural for AI actions.

