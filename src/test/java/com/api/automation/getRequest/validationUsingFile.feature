Feature: to test the endpoint of the applicataion to test different endpoints with different data format.

  Background: Set the base path
    Given url 'https://reqres.in/api'
    And print '============ This is Background==============='



  Scenario: To test the application for the employees present json response and validate from external file
    Given path '/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def actualResponse = read("../jsonResponse.json")
    And match response == actualResponse
    And print "File ===>", actualResponse







