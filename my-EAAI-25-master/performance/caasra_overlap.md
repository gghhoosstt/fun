# overlap只替换正确答案的参考答案
python src/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B2_copy  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out
03/29/2020 21:13:54 - INFO - __main__ -     acc = {'acc': 0.8240740740740741, 'm_f1': 0.8196043956043957, 'w_f1': 0.8234956450956451}
03/29/2020 21:13:54 - INFO - __main__ -     eval_loss = 0.6602795554653687
03/29/2020 21:13:54 - INFO - __main__ -     global_step = 4857
03/29/2020 21:13:54 - INFO - __main__ -     loss = 0.00759068342677011

python src/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 3  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B2_copy  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out
03/29/2020 22:21:11 - INFO - __main__ -   ***** Eval results *****
03/29/2020 22:21:11 - INFO - __main__ -     acc = {'acc': 0.7444444444444445, 'm_f1': 0.6757149380598363, 'w_f1': 0.7414781829717764}
03/29/2020 22:21:11 - INFO - __main__ -     eval_loss = 0.8804890731459155
03/29/2020 22:21:11 - INFO - __main__ -     global_step = 4857
03/29/2020 22:21:11 - INFO - __main__ -     loss = 0.01659122708819029

python src/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 5  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B2_copy  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out
03/29/2020 23:15:50 - INFO - __main__ -   ***** Eval results *****
03/29/2020 23:15:50 - INFO - __main__ -     acc = {'acc': 0.662962962962963, 'm_f1': 0.48219159632846986, 'w_f1': 0.6644785110481889}
03/29/2020 23:15:50 - INFO - __main__ -     eval_loss = 1.0349728760912138
03/29/2020 23:15:50 - INFO - __main__ -     global_step = 4857
03/29/2020 23:15:50 - INFO - __main__ -     loss = 0.029518104764770556