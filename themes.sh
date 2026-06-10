# ---------------------------------------------------------------------
# Themes (full ANSI palette via OSC 4 + fg/bg/cursor via OSC 10/11/12)
# ---------------------------------------------------------------------
_apply_colorscheme() {
    local fg=$1 bg=$2 cursor=$3; shift 3
    printf "\033]10;%s\007" "$fg"
    printf "\033]11;%s\007" "$bg"
    printf "\033]12;%s\007" "$cursor"
    local i=0
    for c in "$@"; do
        printf "\033]4;%d;%s\007" "$i" "$c"
        i=$((i+1))
    done
}

_reset_colorscheme() {
    printf "\033]110\007"
    printf "\033]111\007"
    printf "\033]112\007"
    printf "\033]104\007"
}

# Format per scheme: "fg bg cursor c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15"
COLORSCHEME_C64="#7C70DA #40318D #7C70DA #000000 #883932 #55A049 #BFCE72 #40318D #8B3F96 #67B6BD #9F9F9F #505050 #B86962 #94E089 #BFCE72 #7869C4 #8B3F96 #67B6BD #FFFFFF"
COLORSCHEME_OLDCONSOLE="#33FF33 #0C0C0C #33FF33 #0C0C0C #1F7A1F #33CC33 #1F7A1F #1F7A1F #1F7A1F #2FA82F #2FA82F #154015 #33FF33 #33FF33 #33FF33 #33FF33 #33FF33 #66FF66 #66FF66"
COLORSCHEME_SYNTHWAVE="#00FFF0 #1A0B2E #FF6AC1 #1A0B2E #FF2E63 #05FFA1 #FFD319 #00B8FF #FF6AC1 #00FFF0 #B892FF #4A2A6E #FF6B9D #5CFFC1 #FFE85C #5CD4FF #FF9AE0 #7AFFF5 #F0E6FF"
COLORSCHEME_XMAS="#F0F5F0 #0A1F14 #FFD700 #0A1F14 #E0334E #1E7B3C #FFD700 #6E94C8 #B5495B #A8D8E8 #D0D8D0 #244A30 #FF5C78 #4CAF6E #FFE680 #A0C4EC #D87A8C #C8ECF5 #FFFFFF"
COLORSCHEME_HALLOWEEN="#FF8800 #1A0A1F #76FF03 #1A1A1A #FF6600 #76FF03 #FFB347 #6B1FB1 #9B30FF #39FF14 #E0C8A0 #333333 #FF8800 #A0FF60 #FFD27F #9B5DE5 #C77DFF #76FF03 #FFF0E0"

# Retro hardware
COLORSCHEME_AMIGA="#FFFFFF #0055AA #FF8800 #000000 #FF8800 #00AA00 #FFFF00 #0055AA #AA00AA #00AAAA #AAAAAA #555555 #FFAA55 #55FF55 #FFFF55 #5588FF #FF55FF #55FFFF #FFFFFF"
COLORSCHEME_SPECTRUM="#D7D7D7 #000000 #FFFF00 #000000 #0000D7 #D70000 #D700D7 #00D700 #00D7D7 #D7D700 #D7D7D7 #000000 #0000FF #FF0000 #FF00FF #00FF00 #00FFFF #FFFF00 #FFFFFF"
COLORSCHEME_ZX81="#FFFFFF #000000 #FFFFFF #000000 #FFFFFF #FFFFFF #FFFFFF #FFFFFF #FFFFFF #FFFFFF #000000 #FFFFFF #FFFFFF #FFFFFF #FFFFFF #FFFFFF #FFFFFF #FFFFFF #FFFFFF"
COLORSCHEME_GAMEBOY="#9BBC0F #0F380F #8BAC0F #0F380F #306230 #306230 #8BAC0F #306230 #306230 #8BAC0F #9BBC0F #0F380F #8BAC0F #8BAC0F #9BBC0F #8BAC0F #8BAC0F #9BBC0F #9BBC0F"
COLORSCHEME_MSDOS="#FFFFFF #0000AA #FFFFFF #000000 #AA0000 #00AA00 #AA5500 #0000AA #AA00AA #00AAAA #AAAAAA #555555 #FF5555 #55FF55 #FFFF55 #5555FF #FF55FF #55FFFF #FFFFFF"

# Movie themes
COLORSCHEME_MATRIX="#00FF41 #000000 #00FF41 #000000 #003B00 #008F11 #00FF41 #005C00 #008F11 #00FF41 #00FF41 #000000 #008F11 #00FF41 #00FF41 #005C00 #00FF41 #00FF41 #00FF41"
COLORSCHEME_TRON="#7DF9FF #000000 #FF8C00 #000000 #FF8C00 #1E90FF #FFD700 #1E90FF #FF8C00 #7DF9FF #AEEEFF #003366 #FFA500 #00BFFF #FFFF99 #00BFFF #FFA500 #7DF9FF #FFFFFF"
COLORSCHEME_BLADERUNNER="#F4A261 #0D0221 #E94560 #0D0221 #E94560 #0FB9B1 #F4A261 #3A0CA3 #E94560 #0FB9B1 #CFC9D9 #3D2C5C #FF6B81 #3DDAD7 #FFC785 #7B5CE0 #FF6B81 #3DDAD7 #FFF1E6"
COLORSCHEME_STARTREK="#FF9966 #000000 #9999FF #000000 #FF6666 #99CC99 #FFFF99 #9999FF #CC99CC #99CCFF #FFCC99 #333333 #FF9999 #CCFFCC #FFFFCC #CCCCFF #E0CCFF #CCEEFF #FF9966"

# Editor / community schemes
COLORSCHEME_DRACULA="#F8F8F2 #282A36 #F8F8F2 #21222C #FF5555 #50FA7B #F1FA8C #BD93F9 #FF79C6 #8BE9FD #F8F8F2 #6272A4 #FF6E6E #69FF94 #FFFFA5 #D6ACFF #FF92DF #A4FFFF #FFFFFF"
COLORSCHEME_NORD="#D8DEE9 #2E3440 #D8DEE9 #3B4252 #BF616A #A3BE8C #EBCB8B #81A1C1 #B48EAD #88C0D0 #E5E9F0 #4C566A #BF616A #A3BE8C #EBCB8B #81A1C1 #B48EAD #8FBCBB #ECEFF4"
COLORSCHEME_GRUVBOX="#EBDBB2 #282828 #EBDBB2 #282828 #CC241D #98971A #D79921 #458588 #B16286 #689D6A #A89984 #928374 #FB4934 #B8BB26 #FABD2F #83A598 #D3869B #8EC07C #EBDBB2"
COLORSCHEME_UNICORN="#FFFFFF #FF6FCF #39FF14 #7A1F5C #FF1493 #39FF14 #FFFF66 #00BFFF #FF66FF #66FFFF #FFFFFF #B566CC #FF85C2 #AFFF8F #FFFFB3 #99E6FF #FFB3FF #B3FFFF #FFFFFF"

# Palettes derived from official album palettes (taylor.wjakethompson.com/reference/album_palettes.html)
COLORSCHEME_SWIFTIE_DEBUT="#E7DBCC #1D4737 #1BAEC6 #1D4737 #A0613D #81A757 #C9B57A #2E7A99 #A87C8A #1BAEC6 #B8AC9C #523D28 #C98760 #A8CC80 #E0CFA0 #5CA8C0 #C8A0B0 #5CD0E0 #F5EFE5"
COLORSCHEME_SWIFTIE_FEARLESS="#ECD59F #6E4823 #CBA863 #6E4823 #A8503A #9B9B4A #CBA863 #6E84A0 #B07A6E #8FB0A0 #E1D4C2 #976F34 #D0786A #C4C480 #ECD59F #9CB0CC #D0A89C #B8D4C8 #F8F0E0"
COLORSCHEME_SWIFTIE_SPEAKNOW="#F5E8E2 #2E1924 #D1A0C7 #2E1924 #6C3127 #6E8A6A #D4B888 #7A8AC4 #833C63 #7AB0AC #C8B8C0 #4A2436 #A85C50 #9CB89A #E8D4A8 #A8B4E0 #D1A0C7 #A8D4D0 #FAF2EE"
COLORSCHEME_SWIFTIE_RED="#DDD8C9 #3D0A18 #A91E47 #3D0A18 #C23A5C #6E7A4A #D4A858 #7C88C4 #A85C7A #6E9690 #B0A49A #7A2030 #E06080 #9CAC78 #E8C888 #A8B4E8 #D08CA8 #9CC4BE #F0ECE0"
COLORSCHEME_SWIFTIE_1989="#D8D8CF #5D4E5D #92573C #5D4E5D #92573C #7E8A6E #C6B69C #6E7A96 #846578 #7E9C9C #B8AEB0 #846578 #C07858 #A0B090 #E0D0B0 #98A4C0 #B894AC #A8C8C8 #D8D8CF"
COLORSCHEME_SWIFTIE_REPUTATION="#B9B9B9 #2C2C2C #6E6E6E #2C2C2C #6B2E2E #3D5C3D #6E6E6E #515151 #5B5B5B #6E6E6E #B9B9B9 #515151 #A04040 #5C8A5C #8A8A8A #7A7A7A #8A8A8A #9A9A9A #E0E0E0"
COLORSCHEME_SWIFTIE_LOVER="#FFF5CC #8C4F66 #76BAE0 #8C4F66 #B8396B #A0D8C0 #FFF5CC #76BAE0 #C0A0E0 #A0E0E0 #EBBED3 #6E3A50 #E06090 #C0EED8 #FFFAE0 #A0D0F0 #E0C0F0 #C0F0F0 #FFFAFC"
COLORSCHEME_SWIFTIE_FOLKLORE="#EBEBEB #3E3E3E #949494 #3E3E3E #8A6858 #7A8A6E #B8A888 #6E7E8A #8A7A88 #7A9690 #949494 #545454 #B0907E #A0B494 #D4C4A4 #9CACB8 #B0A0AE #A8C4BE #EBEBEB"
COLORSCHEME_SWIFTIE_EVERMORE="#E0D9D7 #160E10 #D37F55 #160E10 #D37F55 #6E8A5C #C8A468 #6E7E96 #9C7488 #7A9C94 #85796D #421E18 #E0A07C #94B080 #E0C488 #94A8C0 #C098AC #A0C4BC #E0D9D7"
COLORSCHEME_SWIFTIE_MIDNIGHTS="#AA9EB6 #121D27 #85A7BA #121D27 #A86B8C #6B9A8C #E8D8A0 #5A658B #9A6BC4 #6F86A2 #AA9EB6 #2A2E50 #D08CB0 #A0D0C0 #F5E8B8 #85A7BA #C8A0E8 #A0D8E8 #F0EEFF"
COLORSCHEME_SWIFTIE_TTPD="#F7F4F0 #1C160F #ADA795 #1C160F #9C6B5C #6E7A5C #B0A068 #6E7A8C #8C7A8C #7A9090 #ADA795 #3F3824 #C09080 #A0B090 #D4C088 #9CACB8 #B8A0B8 #A8C0BC #F7F4F0"
COLORSCHEME_SWIFTIE_SHOWGIRL="#F0CD92 #1A2818 #EB8246 #1A2818 #C44615 #6CAE90 #F0CD92 #5C9AAE #D17A66 #8FC4AC #E8DCC8 #3E5C38 #EB8246 #A0D0BC #F5DCAE #7AB0C2 #E0A090 #A8D4C0 #FAF3E6"

theme() {
    local eras="debut fearless speaknow red 1989 reputation lover folklore evermore midnights ttpd showgirl"
    local consoles="c64 old amiga spectrum zx81 gameboy msdos"
    local movies="matrix tron bladerunner startrek"
    local seasons="xmas halloween"

    case "$1" in
        console)
            case "$2" in
                c64)
                    _apply_colorscheme $COLORSCHEME_C64
                    ;;
                old|oldconsole|retro)
                    _apply_colorscheme $COLORSCHEME_OLDCONSOLE
                    ;;
                amiga)
                    _apply_colorscheme $COLORSCHEME_AMIGA
                    ;;
                spectrum)
                    _apply_colorscheme $COLORSCHEME_SPECTRUM
                    ;;
                zx81)
                    _apply_colorscheme $COLORSCHEME_ZX81
                    ;;
                gameboy|gb)
                    _apply_colorscheme $COLORSCHEME_GAMEBOY
                    ;;
                msdos|dos)
                    _apply_colorscheme $COLORSCHEME_MSDOS
                    ;;
                "")
                    echo "Tillgängliga konsoler: $consoles"
                    echo "Användning: theme console <namn>"
                    ;;
                *)
                    echo "Okänd konsol: '$2'"
                    echo "Tillgängliga konsoler: $consoles"
                    return 1
                    ;;
            esac
            ;;
        movie)
            case "$2" in
                matrix)
                    _apply_colorscheme $COLORSCHEME_MATRIX
                    ;;
                tron)
                    _apply_colorscheme $COLORSCHEME_TRON
                    ;;
                bladerunner|br)
                    _apply_colorscheme $COLORSCHEME_BLADERUNNER
                    ;;
                startrek|lcars)
                    _apply_colorscheme $COLORSCHEME_STARTREK
                    ;;
                "")
                    echo "Tillgängliga filmer: $movies"
                    echo "Användning: theme movie <namn>"
                    ;;
                *)
                    echo "Okänd film: '$2'"
                    echo "Tillgängliga filmer: $movies"
                    return 1
                    ;;
            esac
            ;;
        season)
            case "$2" in
                xmas|christmas|jul)
                    _apply_colorscheme $COLORSCHEME_XMAS
                    ;;
                halloween)
                    _apply_colorscheme $COLORSCHEME_HALLOWEEN
                    ;;
                "")
                    echo "Tillgängliga säsonger: $seasons"
                    echo "Användning: theme season <namn>"
                    ;;
                *)
                    echo "Okänd säsong: '$2'"
                    echo "Tillgängliga säsonger: $seasons"
                    return 1
                    ;;
            esac
            ;;
        synthwave|vaporwave)
            _apply_colorscheme $COLORSCHEME_SYNTHWAVE
            ;;
        dracula)
            _apply_colorscheme $COLORSCHEME_DRACULA
            ;;
        nord)
            _apply_colorscheme $COLORSCHEME_NORD
            ;;
        gruvbox)
            _apply_colorscheme $COLORSCHEME_GRUVBOX
            ;;
        unicorn)
            _apply_colorscheme $COLORSCHEME_UNICORN
            ;;
        swiftie)
            local era="$2"
            if [ -z "$era" ]; then
                echo "Tillgängliga Swiftie-eror: $eras"
                echo "Användning: theme swiftie <era>"
                return 0
            fi
            local varname="COLORSCHEME_SWIFTIE_$(echo "$era" | tr '[:lower:]' '[:upper:]')"
            local scheme="${!varname}"
            if [ -z "$scheme" ]; then
                echo "Okänd era: '$era'"
                echo "Tillgängliga eror: $eras"
                return 1
            fi
            _apply_colorscheme $scheme
            ;;
        reset)
            _reset_colorscheme
            ;;
        ""|help|list|-h|--help)
            echo "Användning: theme <kategori> <namn>"
            echo ""
            echo "Kategorier:"
            echo "  console <namn>   - $consoles"
            echo "  movie <namn>     - $movies"
            echo "  season <namn>    - $seasons"
            echo "  swiftie <era>    - $eras"
            echo ""
            echo "Fristående teman:"
            echo "  synthwave        - Neon retrowave (alias: vaporwave)"
            echo "  dracula          - Dracula"
            echo "  nord             - Nord"
            echo "  gruvbox          - Gruvbox dark"
            echo "  unicorn          - Pastell/neon plast-enhörning"
            echo "  reset            - Återställ till terminalens default"
            ;;
        *)
            echo "Okänt tema: '$1'"
            echo "Kör 'theme help' för en lista över teman."
            return 1
            ;;
    esac
}
