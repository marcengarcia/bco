Feature: Diagnostics

    Test cases regarding diagnostics creation steps. Valid for
    - Mobile
    - iOS
    - Android
    - iPad
    - Desktop

    Scenario: Create a new Treatment
        Given Logged into my account
        And I navigate to 'Your Treatments'
            | Environment | URL                                                             |
            | Staging     | https://staging.breastcancer.org/profile?section=your-Treatment |
            | Preview     | https://preview.breastcancer.org/profile?section=your-Treatment |
        Then I can add a new Treatment
       
    Scenario: Create a new Treatment - Add a Treatment
        Given I navigate to 'Your Treatment'
            | Environment | URL                                                             |
            | Staging     | https://staging.breastcancer.org/profile?section=your-Treatment |
            | Preview     | https://preview.breastcancer.org/profile?section=your-Treatment |
        And I have already created a Diagnoses
        When I click 'Add'
        Then I am redirected to the Treatment wizard

    Scenario: Completing a new Treatment
        Given I am on the new Treatment wizard
        When I follow the steps on screen
        Then Can create a new Treatment to save in my account
    
    Scenario: Reviewing my TXs
      Given I navigate to my pprofile page:
            | Environment | URL                                          |
            | Staging     | https://staging.breastcancer.org/profile     |
            | Preview     | https://preview.breastcancer.org/profile     |
        And I click on 'Your Treatment'
        Then I should be able to see all my Treatments created

   Scenario: Editing my TXs
      Given I navigate to my Treatment page:
            | Environment | URL                                                                 |
            | Staging     | https://staging.breastcancer.org/profile?section=your-Treatment     |
            | Preview     | https://preview.breastcancer.org/profile?section=your-Treatment     |
        And I click edit on the desired Treatment
        Then I can edit all fields from the side loaded form

   Scenario: Deleting my TXs
      Given I navigate to my Treatment page:
            | Environment | URL                                                                 |
            | Staging     | https://staging.breastcancer.org/profile?section=your-Treatment     |
            | Preview     | https://preview.breastcancer.org/profile?section=your-Treatment     |
        And I click 'Delete' on the desired Treatment
        Then I can delete that Treatment from my profile