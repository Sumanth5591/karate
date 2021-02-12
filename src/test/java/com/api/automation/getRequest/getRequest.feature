Feature: to test the endpoint of the applicataion to test different endpoints with different data format.

  Background: Set the base path
    Given url 'https://reqres.in/api'
    And print '============ This is Background==============='

#  path can be set with both Given and And keywords
  Scenario: To test the application for the employees present JSON response
    Given path '/users'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response

  Scenario: To test the application for the employees present json response
    Given path '/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response ==
      """
      {
      "data": {
      "last_name": "Weaver",
      "id": 2,
      "avatar": "https://reqres.in/img/faces/2-image.jpg",
      "first_name": "Janet",
      "email": "janet.weaver@reqres.in"
      },
      "support": {
      "text": "To keep ReqRes free, contributions towards server costs are appreciated!",
      "url": "https://reqres.in/#support-heading"
      }
      }
      """

  Scenario: To test the application for the employees present json response
    Given path '/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response !=
      """
      {
      "data": {
      "last_name": "Wesaver",
      "id": 2,
      "avatar": "https://reqres.in/img/faces/2-image.jpg",
      "first_name": "Janet",
      "email": "janet.weaver@reqres.in"
      },
      "support": {
      "text": "To keep ReqRes free, contributions towards server costs are appreciated!",
      "url": "https://reqres.in/#support-heading"
      }
      }
      """

  Scenario: To test the application for the employees to validate the Json Array
    Given path '/users?page=2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match header Content-Type == 'application/json; charset=utf-8'
    And match response.data[0].id == 1
    # response.[].anyName[].property name == value
    And match response.data == '#[6]'
    #Above is to check the size of json array but give the length not array!!
    #Wild card character is ----> * , order also important
    And match response.data[*].id == [1,2,3,4,5,6]
    And match response.data[*].id contains [1,2]




    #Fuzzy Matcher
  Scenario: To test the application for the employees to validate the Json Array validate with fuzzy matcher
    Given path '/users?page=2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match header Content-Type == 'application/json; charset=utf-8'
    And match response.data[0].id == 1
    And match response.data == '#[6]'
    And match response.data[0].id == '#present'
    And match response.data[0].id == '#notnull'
    And match response.data == '#array'
    And match response.data[0].name == '#string'
    And match response.data[0].id == '#number'

    #Fuzzy Matcher with Expression
  Scenario: To test the application for the employees to validate the Json Array validate with fuzzy matcher exp
    Given path '/unknown'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match header Content-Type == 'application/json; charset=utf-8'
    # complex fuzzy matcher
    # _ is self variable
    And match response.data[*].id contains '#? _ >= 2'
    And match response.data[*].name == '#? _.length >=1'
    #Array validation
#    And match response.data[0].name == ' #[6] #string? _.length >=1'








