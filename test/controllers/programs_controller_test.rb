require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post :create, program: { contact_email: @program.contact_email, contact_name: @program.contact_name, description: @program.description, eligibility: @program.eligibility, end_age: @program.end_age, is_active: @program.is_active, is_approved: @program.is_approved, is_deleted: @program.is_deleted, meeting_flag: @program.meeting_flag, meeting_time: @program.meeting_time, name: @program.name, phone: @program.phone, restrictions: @program.restrictions, safe_haven: @program.safe_haven, start_age: @program.start_age, wait_list: @program.wait_list, website: @program.website }
    end

    assert_redirected_to program_path(assigns(:program))
  end

  test "should show program" do
    get :show, id: @program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program
    assert_response :success
  end

  test "should update program" do
    patch :update, id: @program, program: { contact_email: @program.contact_email, contact_name: @program.contact_name, description: @program.description, eligibility: @program.eligibility, end_age: @program.end_age, is_active: @program.is_active, is_approved: @program.is_approved, is_deleted: @program.is_deleted, meeting_flag: @program.meeting_flag, meeting_time: @program.meeting_time, name: @program.name, phone: @program.phone, restrictions: @program.restrictions, safe_haven: @program.safe_haven, start_age: @program.start_age, wait_list: @program.wait_list, website: @program.website }
    assert_redirected_to program_path(assigns(:program))
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete :destroy, id: @program
    end

    assert_redirected_to programs_path
  end
end
