Feature: Demo NopCommerce's top menu acceptance criteria

  As a user,I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When user type URL https://demo.nopcommerce.com
    And  User click on Enter button
    Then User is on given URL

  Scenario: verify that user can navigate to Books category
    When User is on Given URl
    And Click on Books tab on Top Menu
    And check on Books tab on Top menu
    Then User is navigated to books Category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When     User is on given URL
    And      Click on Books tab on Top menu
    And      check Filter and List Tab.
    Then     Books category page is displayed with filter and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Book Category page
    Given      User is on Books Category page
    When       User is on Books Category Page
    And        check 'sort by' filter is present
    Then 'sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given    User is on Books Category page
    When     User is on Books Category page
    And      Check 'Display' filter is present
    Then     'Display' Filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   check 'Grid' tab is present
    Then  'Grid' tab is available on Book Category page

  Scenario:  Verify that user can see 'List' tab on Books Category page
    Given User is on Books Category page
    When User is on Books Category Page
    And  Check 'List' tab is present
    Then  'List' tab is available on Book Category page

  Scenario: Verify that user can 'Name: A to Z' selection is present in 'sort by' filter
    Given     User is on Books Category page
    When User is on Books Category Page
    And   Click on 'Sort by' Filter
    And 'Name:A to Z' selection is present in 'sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given User is on Books Category page
    When   User is on Books Category page
    And    Click on 'sort by' Filter
    And    Check that 'Name: A to Z' is first in order
    Then   'Name: A to Z' is first option in order

  Scenario: Verify that user can see ' Name:A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order)
    Given       User is on Books Category page
    When        User is on Books Category page
    And         Click on 'sort by' Filter
    And         Select 'Name: A to Z' filter
    Then        All products are displayed in alphabetical order














