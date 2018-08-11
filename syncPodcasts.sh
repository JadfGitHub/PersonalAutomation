#To run this file:
#1. navigate to desktop (or the location of this file using cd)
#2. execute the following at the prompt in bash: ./syncPodcasts.sh

#create and assign variables for the source and destination directories
sourc="/g/iTunes/Podcasts/"
#cd /c/Users/Jonathan/Desktop
#mkdir ./test
dest="/j/" #"/c/Users/Jonathan/Desktop/test" #

echo "Source directory: "$sourc
echo "Destination directory: "$dest

#navigate to g:/iTunes/Podcasts
cd $sourc #/g/iTunes/Podcasts

#create an array of subdirectories to copy
toCopy[1]='DataFramed'
toCopy[2]='JSEDirect with Simon Brown'
toCopy[3]='Money Tree Investing Podcast _ Stock Mar'
#toCopy[4]='Not So Standard Deviations'
toCopy[4]='Optimal Finance Daily_ Best Of Personal'
toCopy[5]='Personal Finance'
#toCopy[7]='Portuguese Lab Podcast'
#toCopy[8]='Practice Portuguese'
toCopy[6]='The Fat Wallet Show from Just One Lap'
toCopy[7]='The Rich Roll Podcast'
toCopy[8]='Freakonomics'

echo "Folders to synchronise: "${toCopy[*]}

#remove each directory in the list from the copy destination directory
cd $dest

for index in 1 2 3 4 5 6 7 8 #9 10
do
	rm -r "${toCopy[index]}"
done

#copy each directory in the list from the source to the destination
cd $sourc
for index in 1 2 3 4 5 6 7 8 #9 10
do 
	cp -r ./"${toCopy[index]}" $dest
done
