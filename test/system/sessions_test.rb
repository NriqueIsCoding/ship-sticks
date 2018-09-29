require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  setup do
    @session = sessions(:one)
  end

  test "visiting the index" do
    visit sessions_url
    assert_selector "h1", text: "Sessions"
  end

  test "creating a Session" do
    visit sessions_url
    click_on "New Session"

    fill_in "Hesession", with: @session.hesession
    fill_in "Lensession", with: @session.lensession
    fill_in "Wesession", with: @session.wesession
    fill_in "Wisession", with: @session.wisession
    click_on "Create Session"

    assert_text "Session was successfully created"
    click_on "Back"
  end

  test "updating a Session" do
    visit sessions_url
    click_on "Edit", match: :first

    fill_in "Hesession", with: @session.hesession
    fill_in "Lensession", with: @session.lensession
    fill_in "Wesession", with: @session.wesession
    fill_in "Wisession", with: @session.wisession
    click_on "Update Session"

    assert_text "Session was successfully updated"
    click_on "Back"
  end

  test "destroying a Session" do
    visit sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Session was successfully destroyed"
  end
end
