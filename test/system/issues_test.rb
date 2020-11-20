require "application_system_test_case"

class IssuesTest < ApplicationSystemTestCase
  setup do
    @issue = issues(:one)
  end

  test "visiting the index" do
    visit issues_url
    assert_selector "h1", text: "Issues"
  end

  test "creating a Issue" do
    visit issues_url
    click_on "New Issue"

    fill_in "Employee", with: @issue.employee_id
    fill_in "Issue date", with: @issue.issue_date
    fill_in "Item", with: @issue.item_id
    fill_in "Quantity", with: @issue.quantity
    fill_in "Return date date", with: @issue.return_date_date
    click_on "Create Issue"

    assert_text "Issue was successfully created"
    click_on "Back"
  end

  test "updating a Issue" do
    visit issues_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @issue.employee_id
    fill_in "Issue date", with: @issue.issue_date
    fill_in "Item", with: @issue.item_id
    fill_in "Quantity", with: @issue.quantity
    fill_in "Return date date", with: @issue.return_date_date
    click_on "Update Issue"

    assert_text "Issue was successfully updated"
    click_on "Back"
  end

  test "destroying a Issue" do
    visit issues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Issue was successfully destroyed"
  end
end
