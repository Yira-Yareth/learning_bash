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


### 3. -Creating wait time using Wget
For download smaller files, enforcing a mandatory wait time between file downloads makes sure we don't overload the server with too many requests. Here, we will using the built in option flag with wget to create a mandatory wait time (in seconds) between downloading each file stored in the URL list file.

## Instructions

- Create a mandatory 1 second pause between downloading all files in url_list.txt.

## 4 -Data downloading with Wget and curl
To kick off a data analysis project, it's good practice to first consolidate all of our data into one place. Often times, this means downloading and pulling data from various locations such as HTTP servers and databases.

While curl is handy for downloading a single file, it's somewhat unwieldy for handling multiple file downloads. In this capstone exercise, we will use both curl and Wget to download a series of monthly Spotify files, do some minor processing, and consolidate all downloaded files in our local directory.

### Instructions

- Download the zipped ```201812SpotifyData``` data saved in the shortened (redirected) URL using curl. In the same step, rename file as ```Spotify201812.zip```.
- Unzip ```Spotify201812.zip```, delete the original zipped file, and rename the unzipped file to ```Spotify201812.csv``` to stay consistent.
- Use ```url_list.txt``` and Wget to download all 3 files: ```Spotify201809.csv```, ```Spotify201810.csv```, and ```Spotify201811.csv``` in one step, with an upper cap download speed of 2500KB/s.



