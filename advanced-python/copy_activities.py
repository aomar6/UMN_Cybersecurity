# Import the os and shutil module into Python
import os
import shutil
mpath = r"/Users/Abdullahi Omar/Downloads"
os.mkdir('FILES')

# Walk through all of the files contained within the directory
def stu_activities():

    # Finds files in `~/Downloads` that contain the string `Stu_`
    for roots, dirs, files in os.walk(mpath):
        roots = next(os.walk(mpath))[0]
        print('Roots = %s'% roots)
        dirs = next(os.walk(mpath))[0]
        print('Dirs = %s'% dirs)

    
    # Loop through all of the files in the current root
        for file in files:

            # Copies these files into the current working directory
            if file.startswith('Stu_'):
                shutil.copy(file, 'FILES')

stu_activities()