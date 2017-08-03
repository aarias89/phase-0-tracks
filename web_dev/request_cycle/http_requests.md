#9.1 How the Web Works
----
## Release 0

###Common HTTP status codes
* 200 Ok
* 301  moved permanently
* 400  bad request
* 401  Unauthorized
* 403  Forbidden
* 404  not found
* 500  Internal Server Error
* 550  Permission Denied
###Difference between HTTP Post and Get requests.

>Post and Get are methods that are used to submit information to a server from the browser/client.
- the  Get method appends information to the URL, this is why this method is not to be used for username,password, or sensitive information submission. This method allows users to bookmark pages.
-the Post  method  submits data to a server in a hidden but not encrypted way, its a little more secure than using the get method. Unlike the get method, post does not cache the content of a page.

> Whenever we navigate anywhere on the web, assuming we have cookies enabled. The computer stores a small file with data regarding out browse history. This file contains key-data values with information about the user.