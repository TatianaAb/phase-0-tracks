1. What are some common HTTP status codes?
 404 Not Found.
 The most common error code. The 404 status code means the requested resource is no longer available or, more specifically, just not found. 
 
 403 Forbidden.
 Another common client-side response status code is 403. Getting a 403 status code back from an HTTP request means access to the resource is forbidden. 
 
 500 Internal Server Error.
 Moving over to the server-side error codes, the 500 error is the catchall. When none of the other 500 error codes make sense, or if the programmer is just lazy and doesn’t identify the specific problem, a 500 status code is returned. 

 2. What is the difference between a GET request and a POST request? When might each be used?
 GET requests a representation of the specified resource. Note that GET should not be used for operations that cause side-effects, such as using it for taking actions in web applications. One reason for this is that GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause.

 POST submits data to be processed (e.g., from an HTML form) to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.
 So essentially GET is used to retrieve remote data, and POST is used to insert/update remote data

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are messages that web servers pass to web browser when visiting Internet sites. User's browser stores each message in a small file, called cookie.txt . When user request another page from the server, his browser sends the cookie back to the server.