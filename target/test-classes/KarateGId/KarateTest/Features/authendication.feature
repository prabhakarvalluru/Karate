@ignore
Feature: GET Authendication

Background:

*  url 'https://reqres.in/api/'
*  def body1 = read('../data/postinputs.json')
 * def myFeature = call read('register_authorization1.feature')
 * def authcode = myFeature.accessToken

Scenario: generate token tc
Then print 'authcode --', authcode
