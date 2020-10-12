# java-simple-rest-bootstrap
A simple java REST bootstrap application example

* POST example
> curl -X POST -F "name=Ajay" http://localhost:8080/user
Returns UUID of newly added user UUID

> response example:
###### key=9953527c-452f-4d83-840e-603f1cb2ac57


* GET User example
curl -X GET -F "key=9953527c-452f-4d83-840e-603f1cb2ac57" http://localhost:8080/user
###### {"key":"8efdd879-ee5d-4cc3-bdc5-2494e94a649c","name":"Ajay"}
* GET all Users
> curl -X GET  http://localhost:8080/user/list
> Response:
###### [{"key":"8efdd879-ee5d-4cc3-bdc5-2494e94a649c","name":"Ajay"},{"key":"70222799-ca60-4219-b327-63411ba8799a","name":"Ajay"}]