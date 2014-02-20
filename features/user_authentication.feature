Feature: Authentication
  Scenario: Navigate to home page and go to sign up page
    When I go to the homepage
    Then I should see an about link
    Then I should see a contact link
    Then I should see a sign in link
    Then I should see a sign up link
    When I click "Sign Up"
    Then I go to the sign up page

  Scenario: User successfully signs up with email and password
    When I go to the homepage
    And I click "Sign Up"
    And I fill in "joe@example.com" for "Email"
    And I fill in "password" for "Password"
    And I fill in "password" for "Password confirmation"
    And I press "Sign up"
    Then User count should change by 1
    Then I should see a welcome message
    And I should see "Sign Out"
    And I should not see "Sign In"
    And I should not see "Sign Up"
    When I click "Sign Out"
    Then I should not see "Sign Out"
    And I should see "Sign In"

  Scenario: User unsuccessfully signs up with invalid email
    When I go to the homepage
    And I click "Sign Up"
    And I fill in "joe@example" for "Email"
    And I fill in "password" for "Password"
    And I fill in "password" for "Password confirmation"
    And I press "Sign up"
    Then User count should change by 0
    Then I should see an error message
    And I should see "Sign Up"
    And I should not see "Sign Out"

  Scenario: User can log in and log out with email
    Given the following user:
     | email              | password   | password_confirmation   |
     | raditude@gmail.com | password   | password                |
    When I go to the homepage
    And I click "Sign In"
    And I fill in "raditude@gmail.com" for "Email"
    And I fill in "password" for "Password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    And I should see "Sign Out"
    And I should not see "Sign In"
    Then I should see "Sign Out"
    When I click "Sign Out"
    Then I should see "Signed out successfully."
    And I should not see "Sign Out"
    And I should see "Sign In"

  # Scenario: User can login successfully through Facebook
  #   Given that I am signed in with "Facebook"
  #   Then I should see "Successfully authenticated from Facebook account."
  #   And I should not see "Sign in"
  #   And I should not see "Sign up"
  #   And I should see "Account"

  # Scenario: User cannot login through Facebook with invalid credentials
  #   When I try and login with "Facebook" using invalid credentials
  #   Then I should see "Could not authenticate you from Facebook"
  #   And I should see "Sign in"
  #   And I should see "Sign up"
  #   And I should see "Sign in with Facebook"