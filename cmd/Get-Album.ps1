#Prefix to a .mp3 file to retrieve its album.

$loc = wsl pwd
$SONG = "$loc/$args"

$ALBUM = wsl ffprobe -loglevel error -show_entries format_tags=album -of default=noprint_wrappers=1:nokey=1 "$SONG"

return $ALBUM
