require "application_system_test_case"

class LabTechniciansTest < ApplicationSystemTestCase
  setup do
    @lab_technician = lab_technicians(:one)
  end

  test "visiting the index" do
    visit lab_technicians_url
    assert_selector "h1", text: "Lab technicians"
  end

  test "should create lab technician" do
    visit lab_technicians_url
    click_on "New lab technician"

    fill_in "Contact info", with: @lab_technician.contact_info
    fill_in "Name", with: @lab_technician.name
    click_on "Create Lab technician"

    assert_text "Lab technician was successfully created"
    click_on "Back"
  end

  test "should update Lab technician" do
    visit lab_technician_url(@lab_technician)
    click_on "Edit this lab technician", match: :first

    fill_in "Contact info", with: @lab_technician.contact_info
    fill_in "Name", with: @lab_technician.name
    click_on "Update Lab technician"

    assert_text "Lab technician was successfully updated"
    click_on "Back"
  end

  test "should destroy Lab technician" do
    visit lab_technician_url(@lab_technician)
    click_on "Destroy this lab technician", match: :first

    assert_text "Lab technician was successfully destroyed"
  end
end
