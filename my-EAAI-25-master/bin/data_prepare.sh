# using python3 env

# caasra
python3 ../code/data_augmentation/b-caasra.py ./traindata/A-origin/2way/train.txt ./traindata/B-caasra/2way/train.txt

# backtranslate
python3 ./code/data_augmentation/b-back_translation.py ./traindata/A-origin/5way/train.txt ./traindata/B-backtrans/5way/train.txt ./third-party/translate.txt

# backtranslate caasra
python3 