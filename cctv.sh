
for j in $(cat dirTarget.cf )
do
	echo "folder $j"
	./hapus_folder.sh $j
done
