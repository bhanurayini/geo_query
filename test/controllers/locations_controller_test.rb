require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { address_status: @location.address_status, case_management: @location.case_management, case_management_services: @location.case_management_services, city: @location.city, contact_email: @location.contact_email, contact_name: @location.contact_name, donation_flag: @location.donation_flag, end_age: @location.end_age, hours: @location.hours, is_active: @location.is_active, is_approved: @location.is_approved, is_deleted: @location.is_deleted, mailing_address: @location.mailing_address, major_intersections: @location.major_intersections, name: @location.name, other_eligibility: @location.other_eligibility, phone: @location.phone, physical_address: @location.physical_address, service_hours: @location.service_hours, service_hours_notes: @location.service_hours_notes, start_age: @location.start_age, state: @location.state, volunteer_activity: @location.volunteer_activity, volunteer_flag: @location.volunteer_flag, website: @location.website, zip: @location.zip }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: { address_status: @location.address_status, case_management: @location.case_management, case_management_services: @location.case_management_services, city: @location.city, contact_email: @location.contact_email, contact_name: @location.contact_name, donation_flag: @location.donation_flag, end_age: @location.end_age, hours: @location.hours, is_active: @location.is_active, is_approved: @location.is_approved, is_deleted: @location.is_deleted, mailing_address: @location.mailing_address, major_intersections: @location.major_intersections, name: @location.name, other_eligibility: @location.other_eligibility, phone: @location.phone, physical_address: @location.physical_address, service_hours: @location.service_hours, service_hours_notes: @location.service_hours_notes, start_age: @location.start_age, state: @location.state, volunteer_activity: @location.volunteer_activity, volunteer_flag: @location.volunteer_flag, website: @location.website, zip: @location.zip }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
