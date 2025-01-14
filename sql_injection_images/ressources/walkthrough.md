If we try to access the `1 union select title, comment from list_images` from the member page it will give us an error saying `Table 'Member_Sql_Injection.list_images' doesn't exist`

We know it exists, we just can't access it from here.

On the `Search Image` page it works.
We get a md5 hash. `1928e8083cf461a51303633093573c46` -> https://www.dcode.fr/fonction-hash -> "albatroz"

Finally to get the flag we do ``echo -n "albatroz" | md5sum``

> This is an injection as well, inputs still need to be sanitized. For instance using **Prepared Statements**

This is an **Injection**