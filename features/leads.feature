Feature: Leads

  As a sales representative
  I want to track potential customers
  So I can chase for sales

  @teardown_change_lead_status_back_to_new
  Scenario: Changing lead status name
    Given I am logged in
    When I create new lead
    Then Lead status is "New"
    When I change setting lead status name from "New"
    Then Lead status name is applied on leads page
