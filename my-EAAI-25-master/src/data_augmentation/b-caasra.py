# correct answer as reference answer

import sys
from word_overlap import WordOverlap

def en_dict(d, k, v):
    values = d.get(k, set())
    values.add(v)
    d[k] = values
    return d


if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) != 2:
        print('Method: correct answer as reference answer!\nUsage: python caasra.py <src_path> <dest_path>')
        sys.exit(-1)

    src_path = argv[0]
    dest_path = argv[1]


    qrdict = dict()
    with open(src_path, 'r', encoding='utf-8') as f:
        for line in f.readlines():
            vals = line.rstrip().split("\t")

            # id = vals[0]
            question = vals[1]
            referAnswer = vals[2]
            # stdid = vals[3]
            stuAnswer = vals[4]
            accuracy = vals[5]

            # word_type_list = ['NN', 'VB']
            if accuracy == 'correct':
                # overlap = WordOverlap(word_type_list)
                overlap = WordOverlap()
                # dc = overlap.run(referAnswer, stuAnswer)
                is_overlap, _ = overlap.run(referAnswer, stuAnswer)
                if is_overlap:
                    qrdict = en_dict(qrdict, question, stuAnswer)


    desList = list()
    with open(src_path, 'r', encoding='utf-8') as f:
        for line in f.readlines():
            vals = line.rstrip()
            desList.append(vals)

    with open(src_path, 'r', encoding='utf-8') as f:
        for i, line in enumerate(f):
            if i == 0:
                continue

            vals = line.rstrip().split("\t")

            try:  
                question = vals[1]
                referSet = qrdict[question]
                stuAnswer = vals[4]
                accuracy = vals[5].strip() 

                if accuracy != 'correct':
                    continue

                for referAnswer in referSet:
                    if referAnswer == stuAnswer:
                        continue

                    vals[2] = referAnswer
                    des = '\t'.join(vals)
                    desList.append(des)
            except KeyError:
                print("error becase no reference overlap with studentanswer with this question")
                print(question)
                print(line)


    with open(dest_path, 'a', encoding='utf-8') as f:
        for (i,line) in enumerate(desList):
            f.write(line + '\n')
