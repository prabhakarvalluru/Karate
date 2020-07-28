@ignore
Feature: Post request test

Background: 

*  url 'https://reqres.in/api/users'
*  def body = read('../data/postinputs.json')
* def headers = {Accept: 'application/json' , Content-Type: 'application/json' }


Scenario: test basic post scenario1
And request body
And param delay = 3
And method POST
Then status 201
And print 'response ---',response
