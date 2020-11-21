# back translation on origin data

import sys


if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) != 3:
        print('Method: back translation!\nUsage: python backtranslation.py <src_path> <dest_path> <trans_path>')
        sys.exit(-1)

    src_path = argv[0]
    dest_path = argv[1]
    trans_path = argv[2]

    mapping = dict()
    with open(trans_path, 'r', encoding='utf-8') as f:
        for i, line in enumerate(f):
            line = line.strip()
            line = ':'.join(line.split(':')[1:])
            if i % 2 == 1:
                value = line
                if line == '.':
                    value = key
                
                mapping[key] = value
            else:
                key = line


    # 写入新的句子
    with open(dest_path, 'a', encoding='utf-8') as f_output:
        with open(src_path, 'r', encoding='utf-8') as f_input:
            for i, line in enumerate(f_input):
                if i == 0:
                    f_output.write(line)
                    continue

                vals = line.split('\t')
                question = vals[1].strip()
                refAnswer = vals[2].strip()
                stuAnswer = vals[4].strip()

                vals[1] = mapping[question]
                vals[2] = mapping[refAnswer]
                vals[4] = mapping[stuAnswer]

                new_sentence = '\t'.join(vals)
                f_output.write(new_sentence)