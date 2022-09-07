Feature: Account creation

    Test cases regarding account creation steps. Valid for
    - Mobile
        - iOS
        - Android
        - iPad
        - Desktop

    Scenario: Create a new account
        Given I navigate to BCO's page:
            | Environment | URL                                   |
            | Staging     | https://staging.breastcancer.org/     |
            | Preview     | https://preview.breastcancer.org/@222 |
        When I click on 'Log in'
        Then I have the option of creating a new account by clicking 'Join Now'

    Scenario: Creating an User account
        Given I navigated to:
            | Environment | URL                                           |
            | Staging     | https://staging.breastcancer.org/registrarion |
            | Preview     | https://preview.breastcancer.org/registration |
        When I fill in the form
        Then I should be sent a confirmation email

    Scenario: Creating an User account
        Given I already created an account
        And I was sent the confirmation email
        When I click the confirmation email
        Then My account should be validated and activated

    

