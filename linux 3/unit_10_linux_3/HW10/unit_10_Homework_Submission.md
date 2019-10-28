# Submission

### Tar
#### Stripping Components
- **Exercise 2**
 - Extract `Movies`: tar -xvf TarDocs.tar TarDocs/Movies/ --strip-components=1
  - Extract `Movies/ZOE_0004.mp4`: tar -xvf TarDocs.tar TarDocs/Movies/ZOE_0004.mp4 --strip-components=1
  - Extract `ZOE_0004.mp4`: tar -xvf TarDocs.tar TarDocs/Movies/ZOE_0004.mp4 --strip-components=2

#### Modifying Archives
- **Exercise 1**

  ```bash
cp sample.tar update.tar
tar -tvf update.tar
touch test1.txt test2.txt
tar -rvf update.tar test*.txt
tar -tvf update.tar
  ```

- **Exercise 2**

  ```bash
tar -uvf update.tar text2.txt
tar -tvf update.tar
  ```

- **Exercise 3**

  ```bash
tar -dvf update.tar text2.txt
tar -tvf update.tar 
  ```

#### Incremental Backups
- **Exercise 1**
  - A **snapshot file** is an option that instructs tar to operate on an incrememntal archive with additional metadata stored in a standalone file.
  - A **backup level** is an archive containing all the files in the file system.
  - A **level 0 backup** is an archive with no existing file.

**Exercise 2**

  ```bash
sudo tar -cvf student.0.tar student/ --listed-incremental=/var/log/home.snar
touch ~/new_file.1 ~/new_file.2 
sudo tar -cvf student.1.tar student/ --listed-incremental=/var/log/home.snar
sudo tar -tvf student.1.tar
cp /var/log/home.snar /var/log/home.snar.back
cat /var/log/home.snar
  ```

### Cron
#### Managing cron
Please paste the contents of `backup-cron-jobs.txt` in the space below.

  ```bash
* * * * * mkdir Camara >/dev/null 2>&1
*/2 */2 */2 */2 1-5 cat Camara >/dev/null 2>&1
1-59/2 1-23/2 1-31/2 1-11/2 0,6 echo Camara Student >/dev/null 2>&1
  ```
