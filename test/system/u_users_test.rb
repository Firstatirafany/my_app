require "application_system_test_case"

class UUsersTest < ApplicationSystemTestCase
  setup do
    @u_user = u_users(:one)
  end

  test "visiting the index" do
    visit u_users_url
    assert_selector "h1", text: "U Users"
  end

  test "creating a U user" do
    visit u_users_url
    click_on "New U User"

    fill_in "Email", with: @u_user.email
    fill_in "Full name", with: @u_user.full_name
    fill_in "Password", with: @u_user.password
    click_on "Create U user"

    assert_text "U user was successfully created"
    click_on "Back"
  end

  test "updating a U user" do
    visit u_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @u_user.email
    fill_in "Full name", with: @u_user.full_name
    fill_in "Password", with: @u_user.password
    click_on "Update U user"

    assert_text "U user was successfully updated"
    click_on "Back"
  end

  test "destroying a U user" do
    visit u_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "U user was successfully destroyed"
  end
end
