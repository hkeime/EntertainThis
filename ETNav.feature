@selenium @navigation @ET @usat
Feature: The ET branded navigation module displays and funcitons on Entertain This home, category front and article page

Scenario: ET navigation module displays on ET pages
  Given I am on ET "page" #pages to be defined as ET Home, ET Category Front, ET Article
    Then the navigation module ad should display on the top of page
    And navigation module shold display on bottom of page
    And the module should contain category links


Scenario Outline: Category links in navigation module
      Given I am on a ET page
        Then the ET navigation moodule displays "<category>"
        When I click "<category>"
        Then I am on USAT Life "<navURL>"
        Examples:
              | category       |  navURL                      |
              | ETLogo         |  /entertainthis/             |
              | Celebrities    |  /entertainthis/celebrities/ |
              | Fashion        |  /entertainthis/fashion/     |
              | Movies         |  /entertainthis/movies/      |
              | Music          |  /entertainthis/music/       |
              | TV             |  /entertainthis/tv/          |
              | Red Carpet     |  /entertainthis/redcarpet/   |
