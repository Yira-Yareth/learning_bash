## 1.- Downloading single file using curl
Let's get some hands on practice for the more commonly used options and flags with curl. The URL for the hosted file is a shortened URL using tinyurl. Because of that, we need to fill out a flag option that allows for redirected URLs.

### Instructions 
- Fill in the option flag that allow downloading from a redirected URL.

- In the same step as the download, add in the necessary syntax to rename the downloaded file as Spotify201812.zip.

## 2- Downloading multiple files using curl
We have 100 data files stored in long sequentially named URLs. Scroll right to see the complete URLs.
```
https://s3.amazonaws.com/assets.datacamp.com/production/repositories/4180/datasets/files/datafile001.txt
https://s3.amazonaws.com/assets.datacamp.com/production/repositories/4180/datasets/files/datafile002.txt
......
https://s3.amazonaws.com/assets.datacamp.com/production/repositories/4180/datasets/files/datafile100.txt
```

To minimize having to type the long URLs over and over again, we'd like to download all of these files using a single curl command.

### Instructions

- Download all 100 data files using a single curl command.
- Print all downloaded files to directory.



