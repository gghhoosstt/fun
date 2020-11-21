### data process
sh bin/data_prepare.sh

### model train
sh bin/model_train.sh

### nltk手工下载链接
# http://www.nltk.org/nltk_data/

### bug提醒
1. windows下pytorch只能用whl文件安装，可以用迅雷下载，然后pip install *.whl文件，但是需要对于cuda版本9.0 python版本
2. windows下boto3安装，有时会因为pip版本过高索引问题导致botocore版本不符问题，可以指定版本pip install boto3=1.9.110

python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/A-origin/2way/train.txt traindata/beetle/B2-caasra-on-A/2way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/A-origin/3way/train.txt traindata/beetle/B2-caasra-on-A/3way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/A-origin/5way/train.txt traindata/beetle/B2-caasra-on-A/5way/train.txt

python3 src/data_augmentation/b-caasra-dc.py traindata/beetle/B1-backtrans-on-A/2way/train.txt traindata/beetle/B3-caasra-on-B1/2way/train.txt
python3 src/data_augmentation/b-caasra-dc.py traindata/beetle/B1-backtrans-on-A/3way/train.txt traindata/beetle/B3-caasra-on-B1/3way/train.txt
python3 src/data_augmentation/b-caasra-dc.py traindata/beetle/B1-backtrans-on-A/5way/train.txt traindata/beetle/B3-caasra-on-B1/5way/train.txt

python3 src/data_augmentation/d-replace.py traindata/beetle/A-origin/2way/train.txt traindata/beetle/B1-backtrans-on-A/2way/train.txt traindata/beetle/B4-replace-A-B1/2way/train.txt
python3 src/data_augmentation/d-replace.py traindata/beetle/A-origin/3way/train.txt traindata/beetle/B1-backtrans-on-A/3way/train.txt traindata/beetle/B4-replace-A-B1/3way/train.txt
python3 src/data_augmentation/d-replace.py traindata/beetle/A-origin/5way/train.txt traindata/beetle/B1-backtrans-on-A/5way/train.txt traindata/beetle/B4-replace-A-B1/5way/train.txt

python3 src/data_augmentation/c-merge.py traindata/beetle/A-origin/2way/train.txt traindata/beetle/B1-backtrans-on-A/2way/train.txt traindata/beetle/C1-merge-A-B1/2way/train.txt
python3 src/data_augmentation/c-merge.py traindata/beetle/A-origin/3way/train.txt traindata/beetle/B1-backtrans-on-A/3way/train.txt traindata/beetle/C1-merge-A-B1/3way/train.txt
python3 src/data_augmentation/c-merge.py traindata/beetle/A-origin/5way/train.txt traindata/beetle/B1-backtrans-on-A/5way/train.txt traindata/beetle/C1-merge-A-B1/5way/train.txt

python3 src/data_augmentation/c-merge.py traindata/beetle/B2-caasra-on-A/2way/train.txt traindata/beetle/B3-caasra-on-B1/2way/train.txt traindata/beetle/C2-merge-B2-B3/2way/train.txt
python3 src/data_augmentation/c-merge.py traindata/beetle/B2-caasra-on-A/3way/train.txt traindata/beetle/B3-caasra-on-B1/3way/train.txt traindata/beetle/C2-merge-B2-B3/3way/train.txt
python3 src/data_augmentation/c-merge.py traindata/beetle/B2-caasra-on-A/5way/train.txt traindata/beetle/B3-caasra-on-B1/5way/train.txt traindata/beetle/C2-merge-B2-B3/5way/train.txt


python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/C1-merge-A-B1/2way/train.txt traindata/beetle/D1-caasra-on-C1/2way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/C1-merge-A-B1/3way/train.txt traindata/beetle/D1-caasra-on-C1/3way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/C1-merge-A-B1/5way/train.txt traindata/beetle/D1-caasra-on-C1/5way/train.txt

python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/B4-replace-A-B1/2way/train.txt traindata/beetle/D2-caasra-on-B4/2way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/B4-replace-A-B1/3way/train.txt traindata/beetle/D2-caasra-on-B4/3way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/beetle/B4-replace-A-B1/5way/train.txt traindata/beetle/D2-caasra-on-B4/5way/train.txt