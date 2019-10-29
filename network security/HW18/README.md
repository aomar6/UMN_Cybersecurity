# UFW Configuration

### Getting Started

Please use your **Trilogy Cyber Ubuntu VM** for this assignment.
- Open up Ubuntu VM in virtualbox
    - Log in as student, password cybersecurity
    - Remember to use `sudo` to use ufw or make changes to the system.
    - If you get stuck or apply the wrong rules and want to start over, use the command: `ufw reset`

### Scenario

- In this exercise you will set up their firewall for their Linux server. We provided you with a VM that already has preconfigured network services, namely: SSH, telnet, Apache and FTP. The VM already has UFW enabled, with defaults set to deny all incoming and outgoing traffic.
- **Make the following configuration changes:**

   - Enable the `Apache Full` UFW profile
   - Allow outbound DNS
   - Allow inbound SSH _only from the local subnet_
   - Allow inbound telnet _only from the local subnet_
   - Allow FTP _only from the local subnet_
   - Drop inbound ICMP from outside the local subnet
   - Enable logging at level high/info. 


### Deliverables - Finishing Up
- Creating a Screenshot:
    - Complete the requirements in the scenario above in a terminal window
    - Print **your name** to the terminal window with the echo command.
        - Example: `echo "John Smith"`
    - Run `ufw status verbose` in your Linux terminal window

- Submit the homework:
    - a screenshot of the ufw status with your name in the terminal (created above)




