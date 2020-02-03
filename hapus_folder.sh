rm -rf dateTmp.txt

#persipan tanggal
for n in $(cat hari.cf )
do
	# do something on $n below, say count line numbers
	# wc -l "$n"
	date -d "$n days ago" +"%Y-%m-%d" >> dateTmp.txt
done


#cek if empty input
#input folder target

if [ -z "$1" ]
then
	echo "input empty $1"
exit
else
	echo "Input OK"
fi


#hapus folder
folder="$1"
for j in $(cat dateTmp.txt )
do
	echo "hapus folder $folder/$j"
	rm -rf "$folder/$j"
done
