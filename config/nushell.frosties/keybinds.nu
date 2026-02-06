#     _   __           __         ____
#    / | / /_  _______/ /_  ___  / / /
#   /  |/ / / / / ___/ __ \/ _ \/ / /
#  / /|  / /_/ (__  ) / / /  __/ / /
# /_/ |_/\__,_/____/_/ /_/\___/_/_/
#  _              _     _           _
# | | _____ _   _| |__ (_)_ __   __| |___   _ __  _   _
# | |/ / _ \ | | | '_ \| | '_ \ / _` / __| | '_ \| | | |
# |   <  __/ |_| | |_) | | | | | (_| \__ \_| | | | |_| |
# |_|\_\___|\__, |_.__/|_|_| |_|\__,_|___(_)_| |_|\__,_|
#           |___/

$env.config = ($env.config | upsert keybindings (
    ($env.config.keybindings | append {
        name: "tv-nu-history"
        modifier: "control"
        keycode: "char_h"
        mode: ["emacs", "vi_normal", "vi_insert"]
        event: {
            send: executehostcommand
            cmd: "tv nu-history"
        }
    })
))
