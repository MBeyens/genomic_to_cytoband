chrm=$1
start=$2
end=$3

mysql --user=genome --host=genome-mysql.cse.ucsc.edu -A -D hg19  -e  "select name from cytoBand where chrom = 'chr`echo $chrm`' AND ((chromStart <= `echo $start` AND chromEnd >= `echo $end`) OR (chromStart <= `echo $start` AND `echo $start` <= chromEnd) OR (chromStart <= `echo $end` AND `echo $end` <= chromEnd))"
