date > falcoCuttlek31SRR5901135
/usr/bin/time -v hisat-0.1.6-beta/hisat -p 16 -x Falco_tinnunculus.FalTin1.0.dna.toplevel.fa.cuttlek31 -f -U reads/SRR5901135.fasta >> falcoCuttlek31SRR5901135 2>&1
date >> falcoCuttlek31SRR5901135

date > homoCuttlek31SRR5901135
hisat-0.1.6-beta/hisat -p 16 -x Homo_sapiens.GRCh38.dna.toplevel.fa.cuttlek31 -f -U reads/SRR5901135.fasta >> homoCuttlek31SRR5901135
date >> homoCuttlek31SRR5901135


date > bactCuttlekPos
hisat-0.1.6-beta/hisat -p 16 -x bacterial.genome.fixed.fa.cuttlek31 -f -U reads/bact_test_pos.fa >> bactCuttlekPos
date >> bactCuttlekPos
 -DCMAKE_INSTALL_PREFIX=