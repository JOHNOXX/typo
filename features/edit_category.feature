Feature: Edit Category
  As a blog administrator
  In order to organise my posts
  I want to edit a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully edit categories
    Given I am on the new category page
    When I press "General"
    Then I should be on the edit category page
    And I should see "General"
    When I fill in "Keywords" with "Some Keywords"
    And I fill in "Description" with "A short description"
    And I press "Save"
    Then I should be on the edit category page
    And I should see "Some Keywords"
    And I should see "A short description"

