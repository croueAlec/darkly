On the `members` page we can search for members by their id number. If we search for `1 or 1=1` we get a list of all members, this means that inputs are _not sanitized_ and we can do an SQL injection.

Using mariadb's `information_schema` (the built in database that references the other databases) we can list all the columns with an _union_.

`1 union select TABLE_NAME, COLUMN_NAME from information_schema.columns`

An interesting TABLE_NAME is  `users`, we'll now search in this table.

`1 union select first_name, user_id from users`

It works ! When looking through the table columns, user_id, last_name, town, country and planet don't give us anything useful.

`Commentaire` tells us to decrypt a password and `countersign` gives us the hashed password.
Using https://www.dcode.fr/fonction-hash on `5ff9d0165b4f92b14994e5c685cdce28` gives us `FortyTwo`.
We then do ``echo -n fortytwo | sha256sum`` and we get the flag.

> This is an injection, it can be prevented by sanitizing the input, limiting the input to a certain size, etc...

This is an **Injection**

_Fun fact, the user from Finland has a finnish saying as his comment which roughly translates to "La nuit porte conseil". His password is oktoberfest_