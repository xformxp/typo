Feature: Manage Categories
  As a blog administrator
  In order to organize my articles
  I want to manage the categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create categories
    Given I am on the categories page
    When I fill in "category_name" with "NewCategory"
    And I fill in "category_description" with "Description"
    And I press "Save"
    Then I should be on the categories page
    Then I should see "NewCategory"

  Scenario: Successfully edit categories
    Given I am on the categories page
    Then I should see "General"
    When I follow "General"
    Then the "category_name" field should contain "General"
    And I fill in "category_description" with "Edit test"
    And I press "Save"
    Then I should be on the categories page
    Then I should see "Edit test"