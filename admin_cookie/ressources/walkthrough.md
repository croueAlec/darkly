On any page, when inspecting the site, on the `Storage` tab, under `Cookies` we can see a cookie named `I_am_admin` with a value of `68934a3e9455fa72420237eb05902327`.

When passing this value in https://www.dcode.fr/fonction-hash we see it is actually an **MD5** hash for the word _false_.

If we replace it with a hash of the word _true_ obtained with ``echo -n "true" | md5sum`` and reload, we get the flag.