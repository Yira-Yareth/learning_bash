#this scripts loops into a folder looking files with .py and other sentance to move them into a new folder
#For more information please see the exercieses md, exerciese number 4

# Create a FOR statement on files directory
for file in data/robs_files/*.py
do
  #create IF statment using grep
  if grep -q 'RandomForestClassifier' $file; then
    #move wanted files to to_keep/ folder
    mv $file data/to_keep
  fi
done
