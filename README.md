# Simple HTTP redirect

This docker image will redirect all HTTP requests on port 80 to the root path specified in the `REDIRECT` environment variable.

The entire URI will be sent to the redirected path like this:

When `REDIRECT` is set to `https://www.mydomain.com`:
```
/ => https://www.mydomain.com/
/asdf => https://www.mydomain.com/asdf
/asdf?asdf=1 => https://www.mydomain.com/asdf?asdf=1
```

## Example

`docker run -p 3000:80 -e "REDIRECT=https://www.mydomain.com" ianneub/redirect`
