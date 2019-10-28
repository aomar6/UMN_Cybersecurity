# Create three folders called: JPG, PNG, TIFF.
cd ~/Documents/BOOTCAMP/HW/HW1/
mkdir JPG
mkdir PNG
mkdir TIFF
 
#locate all.jpg files and copy each into their respective folder.
find ./Pictures -type f -iname '*jpg' -exec cp {} JPG/ \;
#locate all .png files and copy each into their respective folder
find ./Pictures -type f -iname '*PNG' -exec cp {} PNG/ \;
#locate all .tiff files and copy each into their respective folder
find ./Pictures -type f -iname '*tiff' -exec cp {} TIFF/ \;


# Create a new file called PictureCounts.md.

touch PictureCounts.md

# Count how many times each file type occurs and log the results to the PictureCounts.md file.

find ./Pictures -type f -iname '*jpg' | wc -l > PictureCounts.md
find ./Pictures -type f -iname '*png' | wc -l >> PictureCounts.md
find ./Pictures -type f -iname '*tiff' | wc -l >> PictureCounts.md
