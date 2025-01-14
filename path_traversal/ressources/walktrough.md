On a regular page such as `survey` we can see the url is `?page=survey`. If we assume this is a path we could move around and try to find relevant info.

Changing the path to `?page=../` gives us `Wtf ?`.
If we keep going, `?page=../../../../` gives us `Almost`. We are on the right track.

With `?page=../../../../../../../` we get the message `You can DO it !!! :]`.

If we try the page `?page=../../../../../../../etc/passwd` we get the flag.

> To prevent this path traversal input validation would be needed, for instance by rejecting any suspicious input containing special characters like '../'.

This is a **Path Traversal**