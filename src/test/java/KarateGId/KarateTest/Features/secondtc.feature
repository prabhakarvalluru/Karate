@ignore
Feature: sample test
Background:
 * def exp_output = read('../Data/inputvalues.json')
 * def result_first = call read('firsttest.feature')

@parallel=false
Scenario: get response of user 3 details

 Given url 'https://reqres.in/api/users/3'
 When method GET
 Then status 200
 And print response
 
    And match response == exp_output[1]
    And match response.data.id == 3
    And match response.data.email != null
    
    And print 'result_first ----', result_first
    And print 'response_firstAPI --', result_first.data.id
        * def id = result_first.response.data.id
    
    And match id == 2
    
    

    
 
 
 
 