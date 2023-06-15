# Use curl, download and rename a single file from URL
curl -o Spotify201812.zip -L https://assets.datacamp.com/production/repositories/4180/datasets/eb1d6a36fa3039e4e00064797e1a1600d267b135/201812SpotifyData.zip

# Unzip, delete, then re-name to Spotify201812.csv
unzip Spotify201812.zip && rm Spotify201812.zip
mv 201812SpotifyData.csv data/Spotify201812_.csv

# View url_list.txt to verify content
cat data/url_list.txt

# Use Wget, limit the download rate to 2500 KB/s, download all files in url_list.txt
wget --limit=2500k -i data/url_list.txt

# Take a look at all files downloaded
ls
