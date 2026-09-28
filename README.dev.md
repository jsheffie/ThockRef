# ThockRef — Developer Notes

## Makefile Targets

| Target | What it does |
|---|---|
| `make build` | `swift build -c release` |
| `make app` | builds + assembles `ThockRef.app` bundle |
| `make install` | assembles + installs to `/Applications/ThockRef.app`, code-signs |
| `make run` | install + `open` |
| `make uninstall` | kills + removes from `/Applications` |
| `make seed` | copies the example files to `~/.config/thockref/` (skips files already installed) |
| `make dist` | removes `~/.config/thockref/*.md`, then copies all example files fresh |
| `make archive` | packages a release zip with SHA-256 for Homebrew tap |
| `make clean` | removes `.build` and `ThockRef.app` |

## Example File Order

`seed` and `dist` install only the files listed in `example_keyboard_shortcuts/thockref-files-order`, in that order.
Each copy gets a `NNN-` prefix from its position (for example `001-Workflow-2.0.md`), because the app sorts by file name and strips the prefix from the display name.
To reorder, edit the order file and run `make dist`. Example files that are not listed there are skipped with a warning.
