@ignore
Feature: Test Java methods

Scenario: Call static and Non static methods

* def javaDemo = Java.type('KarateGId.KarateTest.Features.testjavamethods')
* def result = new javaDemo().nonstaticmethods("Hello");

* def static = javaDemo.staticmethod("Hello");
And print 'static --', static

And match static == "I am static Hello"

* def javawrite = Java.type('KarateGId.KarateTest.Features.Writer')
* def writerline = javawrite.writeData("Hello I am writing data from ff")
And print 'writerline --', writerline
    Then print 'abc --',abc


