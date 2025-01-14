On the `© BornToSec` page (link at the bottom) when inspecting the HTML code we can see comments that indicate us a specific browser and origin page. To change theses values we will use the `Modify Header Value` extension for firefox.

With it we will change the User-Agent value to `ft_bornToSec` and the Referer value to `https://www.nsa.gov/`.

When reloading the `© BornToSec` we'll see the flag.

> I mean is this really a security breach ? If we needed to "fix" it then removing the comments indicating a specific referer and browser might be a start.

This is **not** an OWASP breach