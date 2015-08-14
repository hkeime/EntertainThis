@selenium @ads @poster
Feature: The Poster or Poster scroll ad should display on a story page, a video page, and a gallery overlay page.

Scenario: Poster Ad: Appears on a Blog page
  Given that I am on a story page with a "blog with poster ad"
    Then the poster ad should appear on the page

Scenario: Poster Ad: Appears on a Gallery page
  Given that I am on a story page with a "gallery with poster ad"
    Then the poster ad should appear on the page

Scenario: Poster Ad: Appears on a Video page
  Given that I am on a video overlay page with poster ad
    Then the poster ad should appear on the page
    And the poster ad should be below the "video"

Scenario: Poster Scroll Ad: Basic functionality
  Given I am navigating there with cleared cache and cookies
  When I navigate to the "Poster Scroll" advertisement
  When I scroll "down"
    Then the "Poster Scroll ad" appears
  When I scroll "up"
    Then the "Poster Scroll ad doesnot" appears

  #New scenarios for Entertain This.
  @USAT @ET
  Scenario: Poster Ad: Appears on a Entertain This Pages
    Given that I am on a "ET homepage with poster ad"
    Then The poster ad should be below top5
    When that I am on a "ET category front with poster ad"
    Then The poster ad should be on top of right rail
    When that I am on a story page with a "ET story with poster ad"
    Then The poster ad should be on top of right rail

  @USAT @ET
    Scenario Outline: Poster Scroll Ad: Appears on Entertain This Pages after scroll
          Given I am on a ET "<page>"
          When I scroll "down"
          Then the "Poster Scroll ad" appears
          When I scroll "up"
          Then the "Poster Scroll ad doesnot" appears
            Examples:
                  | page     |
                  | home     |
                  | category |
                  | story    |
