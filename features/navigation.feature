Feature: As i100independent user
  I would like to read news on the site
  So that i can get informed on the latest news

  Background:
    Given I am on the i100independent news site page

  Scenario: Login functionality
    When I click on the login button
    And I choose a social network button
    Then I am successfully logged in


  Scenario: Navigate to article details page
    When I select an article to view article details
    Then details page of the corresponding article is displayed
#    And I select home button logo
#    Then I should be on the home page

  Scenario: Navigate to a Category tab
    When I click on a category
    Then Category page is displayed for the selected category

  Scenario: Upvote an article
    When I click on upvote button in one article
    Then the article is upvoted
