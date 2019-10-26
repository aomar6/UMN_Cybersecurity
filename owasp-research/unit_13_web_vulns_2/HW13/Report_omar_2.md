# OWASP Top 10 - A Primer
This document explores the 10 vulnerability classes discussed in [OWASP Top 10 - 2017](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf).

## Vulnerabilities
### A3:2017 - Sensitive Data Exposure
#### Definition / Description
 - The source, severity, and scope of sensitive data exposure

Many web applications and APIs do not properly protect sensitive data, such as financial, healthcare, and PII. Attackers may steal or modify such weakly protected data to conduct credit card fraud, identity theft, or other crimes. Sensitive data may be compromised without extra protection, such as encryption at rest or in transit, and requires special precautions when exchanged with the browser.

 - What kind of damage it can do to a business

Attackers have to gain access to only a few accounts, or just one admin account to compromise the system. Depending on the domain of the application, this may allow money laundering, social security fraud, and identity theft, or disclose legally protected highly sensitive information.

#### How it Works

An attacker can use Local File Inclusion (LFI) to trick the web application into exposing or running files on the web server. the attacker can exploit the LFI vulnerability to access other files on the web server, such as the web server log files or other files that may contain sensitive meta data about the web application and web server.

#### Scenario
TODO: Explain the LFI vulnerability you explored on the DVWA **File Inclusion** page.

Specifically, explain
- How you perform the attack
  - **Note**: Include the URL you use to demonstrate the LFI, and provide a screenshot of the output it generates.
- Why the attack works
- How the server could be configured to prevent this attack
---
### A4:2017 - XML External Entities (XXE)
#### Definition / Description
TODO: Use the OWASP document to explain
 - The source, severity, and scope of XXE attacks

Many older or poorly configured XML processors evaluate external entity references within XML documents. External entities can be used to disclose internal files using the file URI handler, internal file shares, internal port scanning, remote code execution, and denial of service attacks.

 - What kind of damage it can do to a business

These flaws can be used to extract data, execute a remote request from the server, scan internal systems, perform a denial-of-service attack, as well as execute other attacks. The business impact depends on the protection needs of all affected application and data.

#### How it Works

  - What XML is 
  Extensible Markup Language
  - How web applications use XML
  takes a regular HTML format and makes it so that it can read easily as in a mobile format.
  - Why web applications can be attacked via XML uploads
  Attackers can exploit vulnerable XML processors if they can upload XML or include hostile content in an XML document, exploiting vulnerable code, dependencies or integrations. 
  - Ways that XXE payloads can be delivered
   extract data, execute a remote request from the server, scan internal systems, perform a denial-of-service attack, as well as execute other attacks

#### Scenario

##### Payload 1
```xml
<?xml version="1.0" encoding="ISO-8859-1"?> <!DOCTYPE foo [
<!ELEMENT foo ANY >
<!ENTITY xxe SYSTEM "file:///etc/passwd" >]> <foo>&xxe;</foo>
 ```
this payload is used to disclose the /etc/passwd files. it could also be used to disclose other targeted files such as /etc/shadow
 
 ##### Payload 2
```xml
<!ENTITY xxe SYSTEM "https://192.168.1.1/private" >]>
 ```
 An attacker probes the server's private network by changing the above ENTITY line

##### Payload 3
```xml
<!ENTITY xxe SYSTEM "file:///dev/random" >]>
 ```

An attacker attempts a denial-of-service attack byincluding a potentially endless file

---
### A5:2017 - Broken Access Control
#### Definition / Description
TODO: Use the OWASP document to explain
- The source, scope, and severity of broken access control vulnerabilities

Restrictions on what authenticated users are allowed to do are often not properly enforced. Attackers can exploit these flaws to access unauthorized functionality and or data, such as access other users' accounts, view sensitive files, modify other users’ data, change access rights, etc.


 - What kind of damage it can do to a business

The technical impact is attackers acting as users or administrators, or users using privileged functions, or creating, accessing, updating or deleting every record. The business impact depends on the protection needs of the application and data.

#### How it Works

The intruder of a web system can get an unauthorized access or upgraded access level by exploiting through the Broken Access Control vulnerability due to inadequate validation of user credential, misconfiguration of sensitive data disclosure, inappropriate use of functions in the code unmanaged exception handling, or uncontrolled redirection of webpage.

#### Scenario
Suppose you log into an application as the user `jane`, and get redirected to: `https://example.site/userProfile.php?user=jane`.

Suppose Jane is able to see Bob's profile by navigating to: `https://example.site/userProfile.php?user=bob`
- This is called **Insecure Direct Object Reference (IDOR)** Read about it here: <https://www.owasp.org/index.php/Testing_for_Insecure_Direct_Object_References_(OTG-AUTHZ-004)>.
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

---
### A8:2017 - Insecure Deserialization
#### Definition / Description

- What serialization is

a process of converting an object into a format which can be persisted to disk, sent through streams, or sent over a network.

- What deserialization is

transforming serialized data coming from a file, stream or network socket into an object.

- What web applications use serialization/deserialization for

Web applications make use of serialization and deserialization on a regular basis and most programming languages even provide native features to serialize data (especially into common formats like JSON and XML). The safe deserialization of objects is normal practice in software development

- What kinds of attacks can be carried out by exploiting insecure deserialization bugs

remote code execution attacks, denial-of0service (DoS) attacks, authentication bypasses.

#### How it Works / Scenario

deserialized data that travells over a network or comes from a data source or input stream that is not controlled by the application.

### A9:2017 - Using Components with Known Vulnerabilities
#### Definition / Description

Components, such as libraries, frameworks, and other software modules, run with the same privileges as the application. If a vulnerable component is exploited, such an attack can facilitate serious data loss or server takeover. Applications and APIs using components with known vulnerabilities may undermine application defenses and enable various attacks and impacts. 

#### How it Works

supply chains require whatever possible to better secure them, so NIST promotes innovation and industrial competitiveness. they call on organizations to perform self-assessments, practice supply chain risk management methods, and learn how to interact with supply chain stakeholders.


### A10:2017 - Insufficient Logging & Monitoring
#### Definition / Description

Insufficient logging and monitoring, coupled with missing or ineffective integration with incident response, allows attackers to further attack systems, maintain persistence, pivot to more systems, and tamper, extract or destroy data. Most breach studies show time to detect a breach is over 200 days, typically detected by external parties rather than internal processes or monitoring. 

#### How it Works / Scenario

insufficient logging/monitoring with in logins, access control failures, and sever-side input validation failures. could lead to suspicious or malicious accounts.