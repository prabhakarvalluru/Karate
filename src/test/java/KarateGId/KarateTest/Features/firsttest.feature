
Feature: sample test
Background:
 * def exp_output = read('../Data/inputvalues.json')

Scenario: get response of user2 details

 Given url Url
 When method GET
 Then status 200
 And print 'response --',response
  And match response == exp_output[0]
  And match response.data contains { "last_name": "Weaver"}
  And match response.data.last_name contains "Weaver"
    And match response.data.last_name !contains "Weaver1"
  *	def data = [1,2,3]
  And match data contains [1,6]
    #And match response.data.id == 2
    #And match response.data.email != null
    
* def json1 = {hello:'world', learn:'karate'}    
* def json2 = {learn:'karate',  hello:'world'} 
* match json1 == json2   

    
 
 
 
 