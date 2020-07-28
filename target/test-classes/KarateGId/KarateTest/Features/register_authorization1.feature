@ignore
Feature: POST call autherization

Background:

*  url 'https://reqres.in/api/'
*  def body1 = read('../data/postinputs.json')

Scenario: generate token tc
When path 'register'
And request body1[1]
And method POST
Then status 200
Then print 'response -- ', response
* def accessToken = response.token
Then print 'access_token -- ', response.token

#When path 'register'
#And header Autherization = 'Bearer' + accessToken
#When method GET 
