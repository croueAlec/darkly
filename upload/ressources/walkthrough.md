On the upload page. We want to upload a php script (since the stack uses php), to use a reverse shell for example, to remotely execute the uploaded file.
Alas, we cannot upload a php file, since the server only allows jpg files.

The data is sent through a **POST** request, using the multipart/form-data type.
We know that we want to change the **MIME** type of the data to see if the server only relies on that to check the filetype.
**MIME** is a convention created by *IANA* to describe media types. It's usually sent with the *Content-Type* header, but a multipart form already uses this content type.

Thus we precise the content type directly with the type directive in the relevant part of the form.
Using curl, we get this : ``curl -s "http://${DARKLY_URL}/?page=upload" -F "uploaded=@shell.php;type=image/jpg" -F Upload=Upload | grep flag``

> To prevent such an issue, we can use tools or libraries written in the language of the webserver to check the filetype using magic numbers or other heuristics which are way more robust.

This is an **Unrestricted File Upload**
