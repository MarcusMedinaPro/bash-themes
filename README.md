# bash-themes

Live terminal colour themes for Bash, switchable on the fly via OSC escape sequences — no theme files, no terminal restart, no config reload.

```bash
theme console c64
theme movie matrix
theme swiftie midnights
theme season halloween
theme reset
```

## How it works

Modern terminal emulators support [OSC](https://en.wikipedia.org/wiki/ANSI_escape_code#OSC) escape sequences for changing colours at runtime:

- `OSC 10` / `11` / `12` — foreground, background, cursor colour
- `OSC 4`  — the 16-colour ANSI palette (colours 0–15)

`theme.sh` defines a single `theme` function that emits these sequences for a chosen palette. The change is instant and applies only to the current terminal session — close the tab/window (or run `theme reset`) and you're back to your terminal's default.

**Requires** a true-color terminal emulator with OSC 4/10/11/12 support — e.g. GNOME Terminal, Konsole, iTerm2, Windows Terminal, Alacritty, kitty, WezTerm.

## Installation

```bash
git clone https://github.com/MarcusMedinaPro/bash-themes.git ~/.bash-themes
echo 'source ~/.bash-themes/themes.sh' >> ~/.bashrc
```

## Usage

```
theme <category> <name>
theme <name>
theme reset
theme help
```

### Categories

| Category | Names | Example |
|---|---|---|
| `console` | `c64`, `old` (alias `oldconsole`/`retro`), `amiga`, `spectrum`, `zx81`, `gameboy`/`gb`, `msdos`/`dos` | `theme console gameboy` |
| `movie` | `matrix`, `tron`, `bladerunner`/`br`, `startrek`/`lcars` | `theme movie tron` |
| `season` | `xmas`/`christmas`/`jul`, `halloween` | `theme season xmas` |
| `swiftie` | `debut`, `fearless`, `speaknow`, `red`, `1989`, `reputation`, `lover`, `folklore`, `evermore`, `midnights`, `ttpd`, `showgirl` | `theme swiftie reputation` |

### Standalone themes

| Name | Description |
|---|---|
| `synthwave` / `vaporwave` | Neon retrowave |
| `dracula` | The classic [Dracula](https://draculatheme.com/) palette |
| `nord` | The [Nord](https://www.nordtheme.com/) palette |
| `gruvbox` | Gruvbox dark |
| `unicorn` | Pastel/neon plastic unicorn |

## Notes

- `zx81` is intentionally monochrome (black & white) — the real ZX81 had no colour output.
- `theme help` always prints the current list of categories and names.

## Credits

- The Swiftie palettes are based on the album palettes from Jake Thompson's [`taylor`](https://github.com/wjakethompson/taylor) R package, specifically [`taylor-album-palettes.R`](https://github.com/wjakethompson/taylor/blob/v4.0.0/R/taylor-album-palettes.R), via [taylor.wjakethompson.com](https://taylor.wjakethompson.com/reference/album_palettes.html).
- [Dracula](https://draculatheme.com/) and [Nord](https://www.nordtheme.com/) are well-known community colour schemes; credit to their respective authors.

## Licence

MIT
