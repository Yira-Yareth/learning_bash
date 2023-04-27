#This script first cat some conditions into them after moves them to another directory

for file in data/model_out/*
do
  # Create a CASE statement for each file's contents
  case $(cat $file) in
   # Match on tree and non-tree models
     *"Random Forest"* | *GMB* | *XGBoost*)
      mv $file data/tree_models/ ;;
       *KNN*|*Logistic*)
        cat $file ;;
    #Create default
    *)
    echo "Unknow model in $file" ;;
    esac
done 
