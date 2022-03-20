function aria --argument url
	aria2c  --max-connection-per-server=8 --min-split-size=1M  --async-dns=false "$url"
end
