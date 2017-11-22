#! /usr/bin/env python
# coding: utf-8

import sys
from Bio import SeqIO

fastaFilename = sys.argv[1]
recordName = sys.argv[2]

record_dict = SeqIO.to_dict(SeqIO.parse(fastaFilename, 'fasta'))
print(record_dict[recordName].seq)
