
# ./hisat-genome.sh <in.fa.gz> <outputfilebasename> <threads> <kmer len>
clear && ./hisat-genome.sh DNA_datasets/Falco_tinnunculus.FalTin1.0.dna.toplevel.fa.gz Falco_tinnunculus.FalTin1.0.dna.toplevel.fa.cuttlek31 16 31 > hisat-genome_Falco_tinnunculus.FalTin1.0.dna.toplevel.fa.cuttlet16k31 &
clear && ./hisat-genome.sh DNA_datasets/Gadus_morhua.gadMor3.0.dna.toplevel.fa.gz Gadus_morhua.gadMor3.0.dna.toplevel.fa.cuttlek31 16 31 > hisat-genome_Gadus_morhua.gadMor3.0.dna.toplevel.fa.cuttlet16k31 &
clear && ./hisat-genome.sh DNA_datasets/Homo_sapiens.GRCh38.dna.toplevel.fa.gz Homo_sapiens.GRCh38.dna.toplevel.fa.cuttlek31 16 31 >hisat-genome_Homo_sapiens.GRCh38.dna.toplevel.fa.cuttlet16k31 &
clear && ./hisat-genome.sh DNA_datasets/bacterial.genome.fixed.fa bacterial.genome.fixed.fa.cuttlek31 16 31 >hisat-genome_bacterial.genome.fixed.fa.cuttlet16k31 &