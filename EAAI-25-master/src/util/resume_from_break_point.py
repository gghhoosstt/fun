from baidu_translate import backTranslate
import sys

def resume_from_break_point(source_data, mid_data, dest_data, has_translate):
    mapping = dict()
    with open(has_translate, 'r', encoding='utf-8') as f:
        for i, line in enumerate(f):
            line = line.strip()
            line = ':'.join(line.split(':')[1:])
            if i % 2 == 1:
                value = line
                mapping[key] = value
            else:
                key = line

    f = open(mid_data, 'r', encoding='utf-8')
    sent_dict = dict()
    with open(has_translate, 'a', encoding='utf-8') as f_out:
        for i, sentence in enumerate(f):
            sentence = sentence.strip()
            backSentence = mapping.get(sentence, '')
            if backSentence == '':
                backSentence = backTranslate('en', 'jp', sentence)
                info = "{}-A:{}\n{}-B:{}".format(i, sentence, i, backSentence)
                print(info)
                f_out.write(info+"\n")
            sent_dict[sentence] = backSentence


    # 写入新的句子
    with open(dest_data, 'a', encoding='utf-8') as f_output:
        with open(source_data, 'r', encoding='utf-8') as f_input:
            for i, line in enumerate(f_input):
                if i == 0:
                    f_output.write(line)
                    continue

                vals = line.split('\t')
                question = vals[1].strip()
                refAnswer = vals[2].strip()
                stuAnswer = vals[4].strip()

                vals[1] = sent_dict[question]
                vals[2] = sent_dict[refAnswer]
                vals[4] = sent_dict[stuAnswer]

                new_sentence = '\t'.join(vals)
                f_output.write(new_sentence)

if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) != 4:
        print('Method: replace method!\nUsage: python3 resume_from_break_point.py <source_data> <mid_data> <dest_data> <has_translate>')
        sys.exit(-1)

    source_data = argv[0]
    mid_data = argv[1]
    dest_data = argv[2]
    has_translate = argv[3]

    resume_from_break_point(source_data, mid_data, dest_data, has_translate)

