Feature: NopCommerce Registration

  As a User i want to check the Register functionality of NopCommerce

  Background: I am on Nopcommerce Registration page
    Given  I open the Google Chrome Browser
    When   I open the URl https://demo.nopcommerce.com/register
    Then   I am on Nopcommerce Registration page

  Scenario Outline:I should not be able to register with invalid data on mandatory field (*) of registration page
    When              I enter first name "<First Name>"
    And               I enter Last name "<Last Name>"
    And               I enter Email Address "<Email>"
    And               I enter confirm password "<password>"
    And               I enter confirm password "<Confirm password>"
    And               Click on Register button
    Then              I can see an error message "<error message>"
    And               I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | error message                              |
      | ""         | bakshi    | bakshi@gmail.com | 456897   | 456897           | please enter First Name                    |
      | Rohan      | ""        | bakshi@gmail.com | 456897   | 456897           | please enter Last  Name                    |
      | Rohan      | bakshi    | ""               | 456897   | 456897           | please enter valid Email                   |
      | Rohan      | bakshi    | bakshi@gmail.com | ""       | 456897           | password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | ""               | confirm password is required               |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | 456897           | password and confirm password do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | ""               | minimum 6 character password required      |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) field is Required            |

  Scenario: I should be able to select any one radio button from Gender Label of Your Personal Details section
    Given   I am on Gender label of Your personal detail section
    When    I select "Male" radio button
    And     I select "Female" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline: I should be able to select any one radio button from Gender Label of Your Personal Details section
    Given    I am on Date of Birth field of your Personal Detail Section
    When     I select day "<day>"
    And      I select Month "<Month>"
    And      I select Year  "<Year>"
    Then     I am able to select Day, Month and Year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    Given   I am on Newsletter label on Options section
    When    I click on Newsletter Checkbox
    And     I again click on Newsletter Checkbox
    Then    I was able to check and uncheck the box next to Newsletter label


  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When   I enter First name "Rohan"
    And    I enter Last name "bakshi"
    And     I enter Email "bakshi@gmail.com"
    And     I enter Password "456897"
    And     I enter confirm Password "456897"
    And    I click on Register button
    Then   I was able to register successfully