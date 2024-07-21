function ytm-dlp
	argparse c/cookies -- $argv

	set cookies /mnt/d/Downloads/music.youtube.com_cookies.txt

	if set -ql _flag_cookies
		set -x cookies _flag_cookies
	end

	yt-dlp -S ext:m4a -x --cookies $cookies --parse-metadata "playlist_index:%(track_number)s" --embed-thumbnail --embed-metadata -o "$HOME/%(uploader)s/%(playlist_title)s/%(title)s.%(ext)s" $argv[1]
end
