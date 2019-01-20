#!/bin/bash
#author:qxt
cd /home/qxt/yolo3_cj
filenum=$(ls *.h5 -l|grep "^-"|wc -l)
index=0
if [ $filenum -gt 2 ]
then
	ls -rt *.h5 > ls.log
	for i in $(cat ls.log)
	do
		index=$(($index+1))
		delnum=$(($filenum-2))
		if [ $index -le $delnum ]
		then
			rm -rf /home/qxt/yolo3_cj/$i
		fi
	done
	rm -rf /home/qxt/yolo3_cj/ls.log 
fi
