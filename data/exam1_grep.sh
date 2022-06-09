#! /bin/bash
cd ../data
mkdir grep
for archivo in /data_INF.txt;
do
	contcds=`git grep -c "partial cds"`
	echo "existen en partial cds $contcds" >> cds_partial.txt
	contmRNA=`git grep -c "linear mRNA"`
	echo "Existen en linear mRNA $contmRNA" >> linear_rna.txt
done

