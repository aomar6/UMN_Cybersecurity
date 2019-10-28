# Import the os and shutil module into Python
import os
import shutil
spath = r"/Users/Abdullahi Omar/Downloads"
os.mkdir('Powerpoints')

def pptx_copy():

    # Walk through all of the files contained within the directory
    for roots, dirs, files in os.walk(spath):
        roots = next(os.walk(spath))[0]
        print('Roots = %s'% roots)
        dirs = next(os.walk(spath))[0]
        print('Dirs = %s'% dirs)

        # Loop through all of the files in the current root
        for file in files:

            # Copies these files into the current working directory
            if file.endswith('.pptx'):
                shutil.copy(file, 'Powerpoints')
            elif file.endswith('.ppt'):
                shutil.copy(file, 'Powerpoints')

pptx_copy()