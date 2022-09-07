Feature: Diagnostics

    Test cases regarding diagnostics creation steps. Valid for
    - Mobile
    - iOS
    - Android
    - iPad
    - Desktop

    Scenario: Create a new Diagnostic
        Given Logged into my account
        And I navigate to 'Your Diagnoses'
            | Environment | URL                                                             |
            | Staging     | https://staging.breastcancer.org/profile?section=your-diagnoses |
            | Preview     | https://preview.breastcancer.org/profile?section=your-diagnoses |
        Then I add a new diagnoses
       
    Scenario: Create a new Diagnostic - Add a diagnosis
        Given I navigate to 'Your Diagnoses'
            | Environment | URL                                                             |
            | Staging     | https://staging.breastcancer.org/profile?section=your-diagnoses |
            | Preview     | https://preview.breastcancer.org/profile?section=your-diagnoses |
        When I click 'Add a diagnosis'
        Then I am redirected to the Diagnosis wizard

    Scenario: Completing a new diagnosis
        Given I am on the new diagnosis wizard
        When I follow the steps on screen
        Then Can create a new diagnoses to save in my account
    
    Scenario: Reviewing my DXs
      Given I navigate to my pprofile page:
            | Environment | URL                                          |
            | Staging     | https://staging.breastcancer.org/profile     |
            | Preview     | https://preview.breastcancer.org/profile     |
        And I click on 'Your diagnoses'
        Then I should be able to see all my diagnoses created

   Scenario: Editing my DXs
      Given I navigate to my Diagnoses page:
            | Environment | URL                                                                 |
            | Staging     | https://staging.breastcancer.org/profile?section=your-diagnoses     |
            | Preview     | https://preview.breastcancer.org/profile?section=your-diagnoses     |
        And I click edit on the desired diagnoses
        Then I can edit all fields from the side loaded form

   Scenario: Deleting my DXs
      Given I navigate to my Diagnoses page:
            | Environment | URL                                                                 |
            | Staging     | https://staging.breastcancer.org/profile?section=your-diagnoses     |
            | Preview     | https://preview.breastcancer.org/profile?section=your-diagnoses     |
        And I click 'Delete' on the desired diagnoses
        Then I can delete that diagnostic from my profile