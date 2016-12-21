# What are some common HTTP status codes?
* 200 OK indicates the request has succeeded. The info returned with the response is dependent on the method used in the request.
* 300 Multiple choices indicates the requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted.
* 301 Moved Permanently indicates the requested resource has been assigned a new permanent URl and any future references to this resource should be use on of the return URls.
* 302 Found indicates the requested resource resides temporarily under a different URl. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URl for future requests.
* 304 Not Modified indicates if the client performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields. 
* 307 Temporary Redirect indicates the requested resource resides temporarily under a different URl. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request_URl for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
* 400 Bad Request. The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
* 401 Unauthorized. The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource. 
* 403 Forbidden. The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
* 404 Not Found. The server has not found anything matching the Request-URl. No indication is given of whether the condition is temporary or permanent.
* 410 Gone. The requested resource is no longer available at the server and no forwarding address is known. The condition is expected to be considered permanent. 
* 500 Internal Server Error. The server encountered an unexpected condition which prevented it from fulfilling the request. 
* 501 Not Implemented. The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.
* 503 Service Unavailable. Your web server is unable to handle your HTTP request at the time. Common problems are server crash, server maintenance, server overload, server maliciously being attacked. This is usually a temporary condition.
* 550 Permission Denied. There is stating the the account you have currently logged in as does not have permission to perform the action you are attempting.

#What is the difference between a GET request and a POST request? When might each be used?
* POST requests supply additional data from the client(browser) to the server in the message body. In contrast, GET requests include all required data in the the URL. The fundamental difference is that they correspond to different HTTP requests. GET is for retrieving data. It should have no side effects, you should be able to request the same URL over and over harmlessly. POST is for writing data. The main thing to keep in mind as a programmer is that defining your form to use the GET method does not protect against causing changes. You could use a GET request to do pretty much the same thing as a POST query. It’s just that browsers are generally coded to expect that POST requests will be used for things that will cause changes – like placing an order, or writing to a database, etc . GET requests should be used for pure queries that don’t affect anything on the server

#What is a cookie?
* A cookie is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol. Cookies are mainly used for session management such as user logins, shopping carts), personalization (user preferences), and tracking (analyzing user behavior).


