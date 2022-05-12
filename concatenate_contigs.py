#!/usr/bin/python3
import os
import argparse
import pathlib

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Concatenate contigs into single string.')
    parser.add_argument('input_file', type=pathlib.Path)
    parser.add_argument('output_file', type=pathlib.Path)
    parser.add_argument('positions_file', type=pathlib.Path)

    args = parser.parse_args()
    firstLine = True

    with open(args.input_file, 'r') as ifile:
        with open(args.output_file, 'w') as ofile:
            with open(args.positions_file, 'w') as pfile:

                # for each line in input'
                pos = 0
                for line in ifile:
                    if line.startswith('>') and not firstLine:
                        ofile.write('N')
                        pos += 1
                    else:
                        if not firstLine:
                            ofile.write(line.strip())
                            pos += len(line)
                            pfile.write(str(pos) + '\n')
                        else:
                            ofile.write(line)
                            firstLine = False








