@ignore
Feature: JS function Intro

Background:

* url 'https://reqres.in/api/users'

Scenario:
#Given url 'https://reqres.in/api/users/3'
Given param page = 2
And method GET
Then status 200
* def data = response.data
And print 'data  --',data

* def myFun = 
"""
function(arg)
{
for(i=0 ;i<arg.length ; i++){
if(arg[i].id == 9)
{  return arg[i];

}
}
  }
  """
* def array = call myFun data
 And print 'array-- ',array
 
