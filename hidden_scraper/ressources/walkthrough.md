After using `dirb` we can see a file named `/robots.txt`. This file is meant to be an indication for bots such as web scrapers which pages not to go to.

In this case it tells us there exists a directory named `/.hidden`.
In it we can find many urls, all of them leading to a README. We could swift through all of those urls to find the one we want or we could use our python scraper.

Usage ``python scraper.py <address>``. This script will open all the subdirectories it finds until it gets to a README that contains the word `flag`.

> Don't put sensitive directories in /robots.txt since it is mainly used as a good practice to reduce server load and increase SEO it should be used cautiously for important data.

This is a **Sensitive Data Exposure**