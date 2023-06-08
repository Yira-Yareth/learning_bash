#BE CAREFUL THIS SCRIPT DOWNLOAD 100 FILES, IF YOU DON´T NEED IT DON´T RUNNING IT

# Download all 100 data files
curl -O  https://s3.amazonaws.com/assets.datacamp.com/production/repositories/4180/datasets/files/datafile[001-005].txt

# Print all downloaded files to directory
ls datafile*.txt
