# Import the os module into Python
import os

def main(): 

    # Create a directory called `CyberSecurity-Notes` in the current working directory
    os.mkdir('CyberSecurity-Notes')
    os.chdir('CyberSecurity-Notes')

    # Within the `CyberSecurity-Notes` directory, creates 24 sub-directories (sub-folders), called `Week 1`, `Week 2`, `Week 3`, and so on until up through `Week 24`
    # Within each week directory, create 3 sub-directories, called `Day 1`, `Day 2`, and `Day 3`
    for i in range(1,4):
        os.makedirs(os.path.join('Week1', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week2', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week3', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week4', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week5', 'Day' + str(i)))     
    for i in range(1,4):
        os.makedirs(os.path.join('Week6', 'Day' + str(i)))     
    for i in range(1,4):
        os.makedirs(os.path.join('Week7', 'Day' + str(i)))     
    for i in range(1,4):
        os.makedirs(os.path.join('Week8', 'Day' + str(i)))     
    for i in range(1,4):
        os.makedirs(os.path.join('Week9', 'Day' + str(i)))     
    for i in range(1,4):
        os.makedirs(os.path.join('Week10', 'Day' + str(i)))     
    for i in range(1,4):
        os.makedirs(os.path.join('Week11', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week12', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week13', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week14', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week15', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week16', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week17', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week18', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week19', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week20', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week21', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week22', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week23', 'Day' + str(i)))
    for i in range(1,4):
        os.makedirs(os.path.join('Week24', 'Day' + str(i)))  
    
    return 

main()
