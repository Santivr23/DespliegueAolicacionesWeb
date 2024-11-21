# test.hurl
GET http://192.168.108.70/
HTTP/1.1 200
[Asserts]
body contains "<h1>App desplegada</h1>"