# ThockRef — Developer Notes

## Makefile Targets

| Target | What it does |
|---|---|
| `make build` | `swift build -c release` |
| `make app` | builds + assembles `ThockRef.app` bundle |
| `make install` | assembles + installs to `/Applications/ThockRef.app`, code-signs |
| `make run` | install + `open` |
| `make uninstall` | kills + removes from `/Applications` |
| `make seed` | copies `example_keyboard_shortcuts/*.md` → `~/.config/thockref/` (skips existing) |
| `make archive` | packages a release zip with SHA-256 for Homebrew tap |
| `make clean` | removes `.build` and `ThockRef.app` |
