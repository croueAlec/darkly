import requests
import re
import sys

def print_readme(url):
    readme = requests.get(url)
    if ('flag' in readme.text):
        print(f"Contents of {url}")
        print(readme.text)
        sys.exit(0)

def scrap(url):
    r = requests.get(url)
    array = re.findall('"([^"]*)"', r.text)
    for i in array:
        if (i == "README"):
            print_readme(f"{url}{i}")
        elif (len(i) > 8):
            scrap(f"{url}{i}")

if (len(sys.argv) == 1):
    print("Usage python scraper.py <address>")
    sys.exit(1)
else:
    print(f"Scrapping {sys.argv[1]}")
    scrap(sys.argv[1])