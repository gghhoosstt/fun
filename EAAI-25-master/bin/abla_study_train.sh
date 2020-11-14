echo "B4-replace-A-B1 60"
python code/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B4-replace-A-B1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 60   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out

echo "B4-replace-A-B1 70"
python code/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B4-replace-A-B1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 70   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out

echo "B4-replace-A-B1 80"
python code/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B4-replace-A-B1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 80   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out

echo "B4-replace-A-B1 90"
python code/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B4-replace-A-B1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 90   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out

echo "B4-replace-A-B1 100"
python code/model/run_classifier.py --cache_dir C:\Users\claire\.pytorch_pretrained_bert --task_name SAS  --do_train  --do_eval   --n 2  --eval_type ua   --do_lower_case   --train_data_dir traindata/sciEntsBank/B4-replace-A-B1  --test_data_dir testdata\sciEntsBank   --bert_model bert-base-uncased   --max_seq_length 100   --train_batch_size 16   --learning_rate 2e-5   --num_train_epochs 3.0   --output_dir out