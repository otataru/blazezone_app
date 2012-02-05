Feature: Authentication

Scenario: Log in user
 Given I have a user with email address "ovi@blazezone.com"
 When I go to the sign in page
 And I fill in the "user_email" with "ovi@blazezone.com"
 And I fill in "user_password" with "password"
 Then I shoud see "Welcome ovi@blazezone.com"
