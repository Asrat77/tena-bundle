require "test_helper"

class LabTechniciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_technician = lab_technicians(:one)
  end

  test "should get index" do
    get lab_technicians_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_technician_url
    assert_response :success
  end

  test "should create lab_technician" do
    assert_difference("LabTechnician.count") do
      post lab_technicians_url, params: { lab_technician: { contact_info: @lab_technician.contact_info, name: @lab_technician.name } }
    end

    assert_redirected_to lab_technician_url(LabTechnician.last)
  end

  test "should show lab_technician" do
    get lab_technician_url(@lab_technician)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_technician_url(@lab_technician)
    assert_response :success
  end

  test "should update lab_technician" do
    patch lab_technician_url(@lab_technician), params: { lab_technician: { contact_info: @lab_technician.contact_info, name: @lab_technician.name } }
    assert_redirected_to lab_technician_url(@lab_technician)
  end

  test "should destroy lab_technician" do
    assert_difference("LabTechnician.count", -1) do
      delete lab_technician_url(@lab_technician)
    end

    assert_redirected_to lab_technicians_url
  end
end
