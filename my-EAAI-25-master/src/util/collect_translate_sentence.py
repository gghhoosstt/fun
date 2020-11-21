import sys
#  python3 src/collect_translate_sentence.py traindata/beetle/A-origin/2way/train.txt ./data_aug/data/beetle.txt
# 句子装袋
def collect_translate_sentence(source_data, sentence_set_data):
    scentence_bag = set()
    with open(source_data, 'r', encoding='utf-8') as f:
        for i, line in enumerate(f):
            if (i == 0):
                continue

            vals = line.split('\t')
            question = vals[1]
            refAnswer = vals[2]
            stuAnswer = vals[4]

            scentence_bag.add(question)
            scentence_bag.add(refAnswer)
            scentence_bag.add(stuAnswer)

    # 回忆
        print("total:", len(scentence_bag))
        with open(sentence_set_data, 'a', encoding='utf-8') as f:
            for sentence in scentence_bag:
                f.write(sentence + '\n')

if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) != 2:
        print('Method: replace method!\nUsage: python collect_translate_sentence.py <filepath_1> <filepath_2>')
        sys.exit(-1)

    source_data = argv[0]
    sentence_set_data = argv[1]

    collect_translate_sentence(source_data, sentence_set_data)

