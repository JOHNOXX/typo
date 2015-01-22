Feature: Create Category
  As a blog administrator
  In order to organise my posts
  I want to create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create categories page shown
    Given I am on the new category page
    Then I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"

  Scenario: Successfully create categories
    Given I am on the new category page
    When I fill in "Name" with "Category 1"
    And I fill in "Keywords" with "K Lorem Ipsum"
    And I fill in "Permalink" with "P Lorem Ipsum"
    And I fill in "Description" with "D Lorem Ipsum"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Category 1"
    And I should see "K Lorem Ipsum"
    And I should see "P Lorem Ipsum"
    And I should see "D Lorem Ipsum"

