After using `dirb` we can see a directory named `/whatever/` (also present in the robots.txt file). In this directory, we can find a `htpasswd` file containing a user:password.

``root:437394baff5aa33daa618be47b75cb49`` passing the password through a md5 decrypt gets us `qwerty123@`.

Using this user:password duo on another page we found using `dirb`, `/admin/index.php` we get our flag (as well as a nice congratulations message).

> Don't put sensitive directories in /robots.txt and restrain access to sensitive information such as passwords, use stronger passwords, don't use md5 which can be unhashed easily.

This is a **Sensitive Data Exposure**

