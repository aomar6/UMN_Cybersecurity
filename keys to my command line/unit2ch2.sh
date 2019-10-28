#Create a folder called AllRecords.

cd ~/Documents/BOOTCAMP/HW/HW1/OrderRecords
mkdir AllRecords

#Copy all of the order records from 2012–2017 into the AllRecords folder.

find . -type f -exec mv {} AllRecords/ \;


#Inside of the AllRecords folder, create a folder called VIPCustomerOrders.

cd ~/Documents/BOOTCAMP/HW/HW1/OrderRecords/AllRecords
mkdir VIPCustomerOrders

#Find all orders from the VIP Customers Michael Davis or Michael Campbell. Include line and file names in the output.
#awk '/Michael,Davis/' o*
#awk '/Michael,Campbell/' o*

cd ~/Documents/BOOTCAMP/hw/HW1/OrderRecords/AllRecords
grep -ir 'Michael,Davis' *o*
grep -ir 'Michael,Campbell' *o*
cd ~/Documents/BOOTCAMP/hw/HW1/OrderRecords/AllRecords/VIPCustomerOrders

touch VIPCustomerDetails.md
grep -ir 'michael,davis' *o* | wc -l > VIPCustomerDetails.md
grep -ir 'michael,campbell' *o* | wc -l >> VIPCustomerDetails.md

#Move these specific files into the VIPCustomerOrders folder in the form of two files: michael_campbell_orders.output and michael_davis_orders.output.

