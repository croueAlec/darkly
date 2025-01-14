For this one we are going to be bruteforcing our way on the `login` page

We'll be using a script that attempts to connect using a password list in a file provided. The password list is from this github repo https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt

Script usage `./bruteforce.sh <address> <password input file>`

We could also have used the burp suite but this script is easier to use for small lists.

> To prevent this security risk, we must apply a strong password policy. Furthermore we could use a service such as fail2ban to prevent long automated attacks.

This is a **Security Logging and Monitoring Failure**