# Within each of the folders, create an all.txt file that combines the to dos included in the individual's to-do lists.
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Carrie
cat carrie-b.todos.1 carrie-b.todos.2 carrie-b.todos.3 > all.txt

cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Jennifer
cat jennifer-r.todos.1 jennifer-r.todos.2 jennifer-r.todos.3 > all.txt

cd ~/Documents/BOOTCAMP/hw/HW1/Todos/John
cat john-a.todos.1 john-a.todos.2 john-a.todos.3 > all.txt

# Within each of the folders, create a file called done.txt that includes only to dos marked as done.
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Carrie
grep -i 'done' c* | cat > done.txt

cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Jennifer
grep -i 'done' j* | cat > done.txt

cd ~/Documents/BOOTCAMP/hw/HW1/Todos/John
grep -i 'done' j* | cat > done.txt

# Within each of the folders, create a file called unfinished.txt that includes only to dos not marked as done.
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Carrie
grep -iv 'done' c* | cat > unfinished.txt

cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Jennifer
grep -iv 'done' j* | cat > unfinished.txt

cd ~/Documents/BOOTCAMP/hw/HW1/Todos/John
grep -iv 'done' j* | cat > unfinished.txt

# Create a file called ProductivityReport.md at the base of the Todos folder that specifies the number of to dos each person completed and the number they have left. Note: Because of the complexity of this activity, you do not need to use the script to print your results to the ProductivityReport, but you must use a script to do the counting.
cd ~/Documents/BOOTCAMP/hw/HW1/Todos
touch ProductivityReport.md
echo Done: > ProductivityReport.md
echo Carrie: >> ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Carrie

head done.txt | wc -l >> ../ProductivityReport.md

cd ~/Documents/BOOTCAMP/hw/HW1/Todos
echo Jennifer: >> ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Jennifer
head done.txt | wc -l >> ../ProductivityReport.md

cd ~/Documents/BOOTCAMP/hw/HW1/Todos
echo John: >> ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/John
head done.txt | wc -l >> ../ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos

echo To Still Do: >> ProductivityReport.md
echo Carrie: >> ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Carrie
head unfinished.txt | wc -l >> ../ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos

echo Jennifer: >> ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/Jennifer
head unfinished.txt | wc -l >> ../ProductivityReport.md

cd ~/Documents/BOOTCAMP/hw/HW1/Todos
echo John: >> ProductivityReport.md
cd ~/Documents/BOOTCAMP/hw/HW1/Todos/John
head unfinished.txt | wc -l >> ../ProductivityReport.md

cd ~/Documents/BOOTCAMP/hw/HW1/Todos