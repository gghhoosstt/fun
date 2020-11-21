set -e
# source /home/zjt2/anaconda3/bin/activate chxu

# A-origin
# B1-backtrans-on-A
# B2-caasra-on-A
# B3-caasra-on-B1
# B4-replace-A-B1
# C1-merge-A-B1
# C2-merge-B2-B3
# D1-caasra-on-C1
# D2-caasra-on-B4


sh bin/train_worker.sh sciEntsBank 2 ua A-origin
sh bin/train_worker.sh sciEntsBank 2 ua B1-backtrans-on-A
sh bin/train_worker.sh sciEntsBank 2 ua B2-caasra-on-A
sh bin/train_worker.sh sciEntsBank 2 ua B3-caasra-on-B1
sh bin/train_worker.sh sciEntsBank 2 ua B4-replace-A-B1
sh bin/train_worker.sh sciEntsBank 2 ua C1-merge-A-B1
sh bin/train_worker.sh sciEntsBank 2 ua C2-merge-B2-B3
sh bin/train_worker.sh sciEntsBank 2 ua D1-caasra-on-C1
sh bin/train_worker.sh sciEntsBank 2 ua D2-caasra-on-B4

sh bin/train_worker.sh sciEntsBank 3 ua A-origin
sh bin/train_worker.sh sciEntsBank 3 ua B1-backtrans-on-A
sh bin/train_worker.sh sciEntsBank 3 ua B2-caasra-on-A
sh bin/train_worker.sh sciEntsBank 3 ua B3-caasra-on-B1
sh bin/train_worker.sh sciEntsBank 3 ua B4-replace-A-B1
sh bin/train_worker.sh sciEntsBank 3 ua C1-merge-A-B1
sh bin/train_worker.sh sciEntsBank 3 ua C2-merge-B2-B3
sh bin/train_worker.sh sciEntsBank 3 ua D1-caasra-on-C1
sh bin/train_worker.sh sciEntsBank 3 ua D2-caasra-on-B4

sh bin/train_worker.sh sciEntsBank 5 ua A-origin
sh bin/train_worker.sh sciEntsBank 5 ua B1-backtrans-on-A
sh bin/train_worker.sh sciEntsBank 5 ua B2-caasra-on-A
sh bin/train_worker.sh sciEntsBank 5 ua B3-caasra-on-B1
sh bin/train_worker.sh sciEntsBank 5 ua B4-replace-A-B1
sh bin/train_worker.sh sciEntsBank 5 ua C1-merge-A-B1
sh bin/train_worker.sh sciEntsBank 5 ua C2-merge-B2-B3
sh bin/train_worker.sh sciEntsBank 5 ua D1-caasra-on-C1
sh bin/train_worker.sh sciEntsBank 5 ua D2-caasra-on-B4


sh bin/train_worker.sh sciEntsBank 2 ua D1
sh bin/train_worker.sh sciEntsBank 2 ua D2
sh bin/train_worker.sh sciEntsBank 2 ua D3
sh bin/train_worker.sh sciEntsBank 2 ua D4
sh bin/train_worker.sh sciEntsBank 2 ua D12
sh bin/train_worker.sh sciEntsBank 2 ua D13
sh bin/train_worker.sh sciEntsBank 2 ua D14
sh bin/train_worker.sh sciEntsBank 2 ua D23
sh bin/train_worker.sh sciEntsBank 2 ua D24
sh bin/train_worker.sh sciEntsBank 2 ua D34
sh bin/train_worker.sh sciEntsBank 2 ua D123
sh bin/train_worker.sh sciEntsBank 2 ua D124
sh bin/train_worker.sh sciEntsBank 2 ua D134
sh bin/train_worker.sh sciEntsBank 2 ua D234
sh bin/train_worker.sh sciEntsBank 2 ua D1234

sh bin/train_worker.sh sciEntsBank 3 ua D1
sh bin/train_worker.sh sciEntsBank 3 ua D2
sh bin/train_worker.sh sciEntsBank 3 ua D3
sh bin/train_worker.sh sciEntsBank 3 ua D4

sh bin/train_worker.sh sciEntsBank 5 ua D1
sh bin/train_worker.sh sciEntsBank 5 ua D2
sh bin/train_worker.sh sciEntsBank 5 ua D3
sh bin/train_worker.sh sciEntsBank 5 ua D4