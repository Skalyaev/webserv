# Webserv
> *This is when you finally understand why a URL starts with HTTP*

*The Hypertext Transfer Protocol (HTTP) is an application protocol for distributed, collaborative, hypermedia information systems.*
*HTTP is the foundation of data communication for the World Wide Web, where hy-pertext documents include hyperlinks to other resources that the user can easily access.*
*For example, by a mouse click or by tapping the screen in a web browser.*
*HTTP was developed to facilitate hypertext and the World Wide Web.*
*The primary function of a web server is to store, process, and deliver web pages to clients.*
*The communication between client and server takes place using the Hypertext Transfer Protocol (HTTP).*
*Pages delivered are most frequently HTML documents, which may include images, style sheets, and scripts in addition to the text content.*
*Multiple web servers may be used for a high-traffic website.*
*A user agent, commonly a web browser or web crawler, initiates communication by requesting a specific resource using HTTP and the server responds with the content of that resource or an error message if unable to do so.*
*The resource is typically a real file on the server’s secondary storage, but this is not necessarily the case and depends on how the webserver is implemented.*
*While the primary function is to serve content, full implementation of HTTP also includes ways of receiving content from clients.*
*This feature is used for submitting web forms, including the uploading of files.*

> This project is about writing your ow HTTP server.
> You will be able to test it with an actual browser.
> HTTP is one of the most used protocols on the internet.
> Knowing its arcane will be useful, even if you won’t be working on a website

## Checklists
- [x] Config file parsing
- [x] GET, POST, DELETE methods
- [x] Status code
- [x] File upload
- [x] CGI
- [x] No leak
- [x] No crash
- [x] `siege` test: 99.9% availability

## Usage
```sh
git clone git@github.com:Skalyaeve/webserv.git
cd webserv
make
./webserv webserv.conf # then browse to http://localhost:8080 - 8083
```
