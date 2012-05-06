Feature: Manage Events
  In order to organise a event
  As an organisor
  I want to create and manage events

  Scenario: Events List
    Given I have events titled Riviera, Gravitas
    When I go to the list of Events
    Then I should see "Riviera"
    And I should see "Gravitas"
