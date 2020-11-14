import sys

if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) != 3:
        print('Method: replace method!\nUsage: python replace.py <filepath_1> <filepath_2> <dest_path>')
        sys.exit(-1)

    filepath_1 = argv[0]
    filepath_2 = argv[1]
    dest_path = argv[2]

    # question replace
    with open(dest_path, 'a', encoding='utf-8') as f_output:
        filedict1 = dict()
        with open(filepath_1, 'r', encoding='utf-8') as f_input:
            for i, line in enumerate(f_input):
                if i == 0:
                    f_output.write(line)
                else:
                    line = line.rstrip()
                    filedict1[i] = line

        filedict2 = dict()
        with open(filepath_2, 'r', encoding='utf-8') as f_input:
             for i, line in enumerate(f_input):
                if i == 0:
                    continue
                else:
                    line = line.rstrip()
                    filedict2[i] = line
        
        if len(filedict1) == len(filedict2):
            n = len(filedict1)
            print("start replace!")

            total_lines = list()
            for i in range(1, n+1):
                line1 = filedict1[i]
                line2 = filedict2[i]
                

                line1_val = line1.split('\t')
                line1_id = line1_val[0]
                line1_q = line1_val[1]
                line1_r = line1_val[2]
                line1_stuid = line1_val[3]
                line1_a = line1_val[4]
                line1_label = line1_val[5]

                line2_val = line2.split('\t')
                line2_id = line2_val[0]
                line2_q = line2_val[1]
                line2_r = line2_val[2]
                line2_stuid = line2_val[3]
                line2_a = line2_val[4]
                line2_label = line2_val[5]

                if line1_a == line2_a and line1_r == line2_r:
                    total_lines.append(line1)
                else:
                    total_lines.append(line1)
                    total_lines.append(line2)
                # if line1_q != line2_q:
                #     new_line1 = '\t'.join([line1_id, line2_q, line1_r, line1_stuid, line1_a, line1_label])
                #     new_line4 = '\t'.join([line2_id, line1_q, line2_r, line2_stuid, line2_a, line2_label])
                #     total_lines.append(new_line1)
                #     total_lines.append(new_line4)

                if line1_r != line2_r:
                    new_line2 = '\t'.join([line1_id, line1_q, line2_r, line1_stuid, line1_a, line1_label])
                    new_line5 = '\t'.join([line2_id, line2_q, line1_r, line2_stuid, line2_a, line2_label])
                    total_lines.append(new_line2)
                    total_lines.append(new_line5)

                # if line1_a != line2_a:
                #     new_line3 = '\t'.join([line1_id, line1_q, line1_r, line1_stuid, line2_a, line1_label])
                #     new_line6 = '\t'.join([line2_id, line2_q, line2_r, line2_stuid, line1_a, line2_label])
                #     total_lines.append(new_line3)
                #     total_lines.append(new_line6)
            
            n_total = len(total_lines)
            i = 0

            for line in total_lines:
                f_output.write(line)

                if i != n_total - 1:
                    f_output.write("\n")
                i += 1
                
               

        else:
            print("column number can not match!")
