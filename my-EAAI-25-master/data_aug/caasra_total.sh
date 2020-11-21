# sciEntsBank
echo "process sciEntsBank"
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/A-origin/2way/train.txt traindata/sciEntsBank/B2-caasra-on-A/2way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/A-origin/3way/train.txt traindata/sciEntsBank/B2-caasra-on-A/3way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/A-origin/5way/train.txt traindata/sciEntsBank/B2-caasra-on-A/5way/train.txt

python3 src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/B1-backtrans-on-A/2way/train.txt traindata/sciEntsBank/B3-caasra-on-B1/2way/train.txt
python3 src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/B1-backtrans-on-A/3way/train.txt traindata/sciEntsBank/B3-caasra-on-B1/3way/train.txt
python3 src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/B1-backtrans-on-A/5way/train.txt traindata/sciEntsBank/B3-caasra-on-B1/5way/train.txt

python3 src/data_augmentation/d-replace.py traindata/sciEntsBank/A-origin/2way/train.txt traindata/sciEntsBank/B1-backtrans-on-A/2way/train.txt traindata/sciEntsBank/B4-replace-A-B1/2way/train.txt
python3 src/data_augmentation/d-replace.py traindata/sciEntsBank/A-origin/3way/train.txt traindata/sciEntsBank/B1-backtrans-on-A/3way/train.txt traindata/sciEntsBank/B4-replace-A-B1/3way/train.txt
python3 src/data_augmentation/d-replace.py traindata/sciEntsBank/A-origin/5way/train.txt traindata/sciEntsBank/B1-backtrans-on-A/5way/train.txt traindata/sciEntsBank/B4-replace-A-B1/5way/train.txt

python3 src/data_augmentation/c-merge.py traindata/sciEntsBank/A-origin/2way/train.txt traindata/sciEntsBank/B1-backtrans-on-A/2way/train.txt traindata/sciEntsBank/C1-merge-A-B1/2way/train.txt
python3 src/data_augmentation/c-merge.py traindata/sciEntsBank/A-origin/3way/train.txt traindata/sciEntsBank/B1-backtrans-on-A/3way/train.txt traindata/sciEntsBank/C1-merge-A-B1/3way/train.txt
python3 src/data_augmentation/c-merge.py traindata/sciEntsBank/A-origin/5way/train.txt traindata/sciEntsBank/B1-backtrans-on-A/5way/train.txt traindata/sciEntsBank/C1-merge-A-B1/5way/train.txt

python3 src/data_augmentation/c-merge.py traindata/sciEntsBank/B2-caasra-on-A/2way/train.txt traindata/sciEntsBank/B3-caasra-on-B1/2way/train.txt traindata/sciEntsBank/C2-merge-B2-B3/2way/train.txt
python3 src/data_augmentation/c-merge.py traindata/sciEntsBank/B2-caasra-on-A/3way/train.txt traindata/sciEntsBank/B3-caasra-on-B1/3way/train.txt traindata/sciEntsBank/C2-merge-B2-B3/3way/train.txt
python3 src/data_augmentation/c-merge.py traindata/sciEntsBank/B2-caasra-on-A/5way/train.txt traindata/sciEntsBank/B3-caasra-on-B1/5way/train.txt traindata/sciEntsBank/C2-merge-B2-B3/5way/train.txt


python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/C1-merge-A-B1/2way/train.txt traindata/sciEntsBank/D1-caasra-on-C1/2way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/C1-merge-A-B1/3way/train.txt traindata/sciEntsBank/D1-caasra-on-C1/3way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/C1-merge-A-B1/5way/train.txt traindata/sciEntsBank/D1-caasra-on-C1/5way/train.txt

python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/B4-replace-A-B1/2way/train.txt traindata/sciEntsBank/D2-caasra-on-B4/2way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/B4-replace-A-B1/3way/train.txt traindata/sciEntsBank/D2-caasra-on-B4/3way/train.txt
python3  src/data_augmentation/b-caasra-dc.py traindata/sciEntsBank/B4-replace-A-B1/5way/train.txt traindata/sciEntsBank/D2-caasra-on-B4/5way/train.txt




echo "process beetle"
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