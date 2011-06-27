Feature: Span

  Background:
    Given I am on the static elements page
  
  Scenario: Getting the text from a span
    When I get the text from the span
    Then the text should be "My alert"

  Scenario Outline: Locating spans on the page
    When I search for the span by "<search_by>"
    Then the text should be "My alert"

  Scenarios:
    | search_by |
    | id        |
    | class     |
    | xpath     |  
    | index     |
    
  @selenium_only
  Scenario Outline: Locating span on Selenium only
    When I search for the span by "<search_by>"
    Then the text should be "My alert"

  Scenarios:
    | search_by |
    | name      |

  Scenario Outline: Locating divs using multiple parameters
    When I search for the span by "<param1>" and "<param2>"
    Then the text should be "My alert"

  Scenarios:
    | param1  | param2  |
    | class   | index   |
    | name    | index   |
