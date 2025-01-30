# Darkly

A Web Security project based on a virtual machine provided on the project page.
We have to find, exploit and explain **14** security breaches in the website. They range from true security issues such as weak passwords (exploited with bruteforce), SQL injections to CTFs (exploited using crawlers).

## Setting up the project

To set-up the project we need to download the Darkly ISO from the intra project page.  
Once done we create a new VM with at least 2048 RAM and 1 Cores.  
Then we under `File > Tools > Network Manager` we make sure there is at least one `Host-only Network`. If not we `Create` it.  
Finally we go to the VM Settings and under `Network` we change `Attached to:` **Host-only Adapter**.  
Once that is done we can boot the VM. 

## A few useful tools

https://owasp.org/www-project-top-ten/ ~ **OWASP** a project referencing most of the breaches we will exploit here.  

https://www.kali.org/tools/dirb/ ~ **Dirb** a web scanner.  

https://portswigger.net/burp ~ **Burp** an all around useful audit tool containing a bruteforcer, a crawler and others.  

https://github.com/vanhauser-thc/thc-hydra ~ **Hydra** a multi-protocol bruteforcer tool.  

https://md5decrypt.net/ and https://www.dcode.fr/fonction-hash ~ **Hash decryption** both links are useful for hash decrytion, the second one is weaker but tests a few at the same time.

## A few useful commands

``cat $(find . -name flag)`` to list all the flags at once.

``cat $(find . -name flag) | wc`` to count the number of flags.
