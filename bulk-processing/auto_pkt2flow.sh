#!/bin/bash
#arguments: <file> <start-line-number> <finish-line-number> <directory>
for i in `seq $2 $3`
do
    line=$(sed $i'q;d' $1)
    echo $line # pcap file path
    pkt2flow -ux -o $4/$i/ $line
done


