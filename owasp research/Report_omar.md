# OWASP Top 10 - A Primer
This document explores the 10 vulnerability classes discussed in [OWASP Top 10 - 2017](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf).

## Vulnerabilities
### A1:2017 - Injections
#### Definition / Description
 - The source, severity, and scope of injection attacks

Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent to an interpreter as part of a command or query.

 - What kind of activity it can be used for (data exfiltration, backdooring, etc.)

The attacker’s hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization

#### How it Works

There are several types of SQL injection, but they all involve an attacker inserting arbitrary SQL into a web application database query. The simplest form of SQL injection is through user input. Web applications typically accept user input through a form, and the front end passes the user input to the back-end database for processing. If the web application fails to sanitize user input, an attacker can inject SQL of their choosing into the back-end database and delete, copy, or modify the contents of the database.

#### Scenario
Explain the UNION injection in the following URL: <http://ptl-f99df351-3bdd4c8f.libcurl.so/cat.php?id=1%20UNION%20SELECT%201,concat(login,%27:%27,password),3,4%20FROM%20users>

Specifically, explain
- What the intended SQL query looks like
it looks for the displayed username and password on the screen
- What the SQL query looks like after injection
a table that makes the login displayed the end is for incrementing
- What this query means (explain the queries to the left and right of the `UNION` keyword)
with the union we can select more data in this sql statement. then we guess the table column names and check and after we check if password column exists. then we pull the data from the database.
- Two strategies for patching this vulnerability
storing a prepared statement that sanitizes it upon execution, being less lazy when building SQL queries in web applications.

---
### A2:2017 - Broken Authentication
#### Definition / Description
 - The source, severity, and scope of broken authentication vulnerabilities. What kind of damage can be done (e.g., data stealing, account tampering, etc.)

Application functions related to authentication and session management are often implemented incorrectly, allowing attackers to compromise passwords, keys, or session tokens, or to exploit other implementation flaws to assume other users’ identities temporarily or permanently


### A6:2017 - Security Misconfiguration
#### Definition / Description
 - The source, severity, and scope of injection attacks
 
 Security misconfiguration is the most commonly seen issue. This is commonly a result of insecure default configurations, incomplete or ad hoc configurations, open cloud storage, misconfigured HTTP headers, and verbose error messages containing sensitive information. Not only must all operating systems, frameworks, libraries, and applications be securely configured, but they must be patched and upgraded in a timely fashion.

 - What kind of activity it can be used for (data exfiltration, backdooring, etc.)

 Such flaws frequently give attackers unauthorized access to some system data or functionality. Occasionally, such flaws result in a complete system compromise. The business impact depends on the protection needs of the application and data.

#### How it Works
- How [allow_url_include](http://php.net/manual/en/filesystem.configuration.php) and [allow_url_fopen]() are responsible for the RFI vulnerability on DVWA

The allow_url_fopen option allows access to files on remote hosts or servers, while the allow_url_include option allows a remote file to utilize a URL rather than a local file path.

- The conditions under which RFI is possible. Refer to [this document](https://www.offensive-security.com/metasploit-unleashed/file-inclusion-vulnerabilities/)

In order for an RFI to be successful, two functions in PHP’s configuration file need to be set. allow_url_fopen and allow_url_include both need to be ‘On’.

- Why the RFI on DVWA qualifies as a Security Misconfiguration vulnerability

 Because if the web server is misconfigured and running with high privileges, the attacker may gain access to sensitive information.

#### Scenario
TODO: Figure out how to turn off `allow_url_fopen` and `allow_url_include`. Include the code you'd add to `php.ini` below.

  ```php
  // TODO: Disables allow_url_fopen
  // TODO: Disables allow_url_include
  ```
  attatched images in shared folder.
---
### A7:2017 - Cross-Site Scripting (XSS)
#### Definition / Description
- The source, scope, and severity of XSS vulnerabilities

XSS flaws occur whenever an application includes untrusted data in a new web page without proper validation or escaping, or updates an existing web page with user-supplied data using a browser API that can create HTML or JavaScript. XSS allows attackers to execute scripts in the victim’s browser which can hijack user sessions, deface web sites, or redirect the user to malicious sites.

- The three different classes of XSS vulnerabilities

Reflected XSS, Stored XSS, DOM XSS

- What kinds of attacks can be carried out with XSS
 
The impact of XSS is moderate for reflected and DOM XSS, and severe for stored XSS, with remote code execution on the victim's browser, such as stealing credentials, sessions, or delivering malware to the victim.

#### How it Works

Reflected XSS payloads gets echoed when a user input is not sanitized correctly and is able to inject code. On an example vulnerable site, if you use the search bar to insert code and the input was reflected on the page, and it gives you an alert, thats when you know there was a reflected XSS payload. 

#### Scenario

Reflected XSS arises when DVWA receives data in an HTTP request and includes that data within the immediate response in an unsafe way.

