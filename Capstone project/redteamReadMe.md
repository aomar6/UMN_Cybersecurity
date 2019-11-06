### Red Team 


In this activity, you will log into CybrScore and will use a Kali instance to hack into a vulnerable web server. Hidden in the webserver is a file called `flag.txt`. You will need to use a reverse php shell to gain access to the webserver to recover the `flag.txt` document. Once you have shown the instructor that you have recovered the flag, they will give you the credentials for the Linux server. You will then need to log onto the Linux server, change the permissions on the Snort log, and download the log file to your Kali instance using your reverse shell. 


**Part 1: Red Team Objectives**

Complete the following in order to find the flag:
  - Log in to cyberscore. 
  - Discover the IP address of the Linux server.
  - Locate the hidden directory on the server.
  - Brute force the password for the hidden directory.
  - Break the hash password with John the Ripper
  - Connect to the server via Webdav.
  - Upload a reverse php connection payload.
  - Capture and show the flag to your instructor.
  - Show your instructor once you have captured the flag, and they will send you the pcap file for the next part of the capstone. 



Make sure to take screenshots as you work through this to show in your presentation. 
