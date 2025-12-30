#!/bin/bash
# Source - https://superuser.com/a
# Posted by pje, modified by community. See post 'Timeline' for change history
# Retrieved 2025-11-22, License - CC BY-SA 4.0
function make_gif {
  palette="/tmp/palette.png"
  filters="fps=15,scale=320:-1:flags=lanczos"

  ffmpeg -i $1 -vf "$filters,palettegen" -y $palette
  ffmpeg -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y output.gif

}
