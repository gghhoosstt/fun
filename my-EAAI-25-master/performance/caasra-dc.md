python src/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B2-caasra-dc-on-A1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out
03/30/2020 10:25:39 - INFO - __main__ -   ***** Eval results *****
03/30/2020 10:25:39 - INFO - __main__ -     acc = {'acc': 0.825925925925926, 'm_f1': 0.8220196353436187, 'w_f1': 0.8256329541322529}
03/30/2020 10:25:39 - INFO - __main__ -     eval_loss = 0.8015366019133259
03/30/2020 10:25:39 - INFO - __main__ -     global_step = 1833
03/30/2020 10:25:39 - INFO - __main__ -     loss = 0.019073808974237372

python src/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 3  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B2-caasra-dc-on-A1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out
03/30/2020 10:56:17 - INFO - __main__ -   ***** Eval results *****
03/30/2020 10:56:17 - INFO - __main__ -     acc = {'acc': 0.7592592592592593, 'm_f1': 0.7235618805720413, 'w_f1': 0.7588325641901976}
03/30/2020 10:56:17 - INFO - __main__ -     eval_loss = 0.9953602860298227
03/30/2020 10:56:17 - INFO - __main__ -     global_step = 1833
03/30/2020 10:56:17 - INFO - __main__ -     loss = 0.04030140998645747


python src/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 5  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B2-caasra-dc-on-A1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out
03/30/2020 11:21:27 - INFO - __main__ -   ***** Eval results *****
03/30/2020 11:21:27 - INFO - __main__ -     acc = {'acc': 0.687037037037037, 'm_f1': 0.6203842444964496, 'w_f1': 0.6902989025156185}
03/30/2020 11:21:27 - INFO - __main__ -     eval_loss = 1.1178134622819282
03/30/2020 11:21:27 - INFO - __main__ -     global_step = 1833
03/30/2020 11:21:27 - INFO - __main__ -     loss = 0.06965312201568356