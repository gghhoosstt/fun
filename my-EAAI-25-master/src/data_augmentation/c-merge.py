import sys


if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) != 3:
        print('Method: back translation!\nUsage: python backtranslation.py <filepath_1> <filepath_2> <dest_path>')
        sys.exit(-1)

    filepath_1 = argv[0]
    filepath_2 = argv[1]
    dest_path = argv[2]

    with open(dest_path, 'a', encoding='utf-8') as f_output:
        with open(filepath_1, 'r', encoding='utf-8') as f_input:
            for line in f_input:
                f_output.write(line.rstrip())
                f_output.write("\n")

        with open(filepath_2, 'r', encoding='utf-8') as f_input:
             for i, line in enumerate(f_input):
                if i == 0:
                    continue
                f_output.write(line)