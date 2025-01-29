When we click on the second NSA logo, we quickly see that the `src` key will inject its content inside a `<object>` tag inside the page.
The input is sanitized, we cannot simply use quotes to escape the Javascript.

Usually, the object tag will try to remotely load a resource, and the input sanitization only allows to load a local resource.
Still, we can try to pass along a **MIME** type to exploit an **XSS** injection.
Using `text/html`, we could then use a `<script>` tag to arbitrarily load Javascript. (ie. an ``alert()`` call)

Still, even if we can load Javascript, it seems insufficient to get the flag.
By searching through the `<object>` tag documentation, we see that we can encode the payload in base64.

``http://${DARKLY_URL}/?page=media&src=?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgpPC9zY3JpcHQ+``

Eventually, we get the flag !

> To prevent such an attack, don't include data sent to a web user without being validated for malicious content.

This is **Cross Site Scripting**
