Feature: Variables creation in karate framework
  #<Gerkin keyword> <def> <variable name> = <value>

  Background: Create and intialize variables
    * def var_int_bck =  2
    * def var_str_bck = 'This is in background'


  Scenario: To create an variable
    #Use Variable for repeating value
  #To match expression
  #Passing data from one feature file to another
  #Storing the vaiable from external source.

  Given def var_int = 10
    And def var_string = "Karate"
    Then print "Int Variable ==>", var_int
    And  print "String Variable ==>", var_string
    * def var_int_2 = var_int + 2
    And print "New Variable ==>", var_int_2

    Scenario: Access the other variables
      #Cannot be acessed to another scenario
      Given print "Previous Scenario variables ==>", var_int
      #So we need to create new variables in this scenario
      * def var_int = 2
      And print "Previous Scenario variables ==>", var_int
      # So create the vatriables in Background
       And print "print from back ground", var_str_bck
