@ignore
Feature: Data driven test

Background: 

*  url 'https://reqres.in/api/users'
* def headers = {Accept: 'application/json' , Content-Type: 'application/json' }

Scenario Outline: test basic post scenario1
And request { "email":<email> , "password":<password>}
And param delay = 3
And method POST
Then status 201
* def id = response
And print 'response1 ---',response

Examples:
|read('../data/uses.csv')|
