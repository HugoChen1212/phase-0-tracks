What are some common HTTP status codes?
1xx give some Information while the connection is still in progress: 100: Continue, 101: Switching Protocol, 103: Checkpoint.
2xx mean successful: 200: ok, 201: Created, 202: Accepted, 203: Non-Authoritative Information, 204: No Content, 205: Reset Content, and 206: Partial Content.
3xx indicate redirection, like 300: Multiple Choice, 301: Moved permanently, 302: Found, 303: See Other, 304: Not Modified, 305: Use Proxy, 307: Temporary Redirect and 308: Permanent Redirect.
4xx show with client side error like 400: Bad Request, 401: Unauthorized, 403: Forbidden, 404: Not Found, 406: Not Acceptable, 407: Proxy Authentication Required, 408: Request Timeout, 409: Conflict, and 410: Gone.
5xx: indicate a server side Error like 500: Internal Server Error, 501: Not Implemented, 502: Bad Gateway, 503: Service Unavailable, 504: Gateway Timeout, and 505: HTTP Version Not Supported.

What is the difference between a GET request and a POST request? When might each be used?
Get is POST is safer than GET
Get:
Is less secure compared to POST, Parameters in URL , used for fetching documents,  maximum URL length, ok to cache, and shouldn’t change the server.
Post:
Is safer than GET, Parameters in body, used for updating data, no max length, not ok to cache, ok to change the server.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookie is a documents containing information about you and your preferences. For example, imagine selecting a certain language for a website you visit, then you tell the website hey I would like to view your website and say English the website would then save that information to a little document of a cookie on your computer. The next time you visit that website it would be able to read the cookie it saved earlier that way the website could remember your language.  The cookies not only can contain the language, it can contain any kind of information like the time you visit a website, shopping basket and so on.
