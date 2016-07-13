require 'test_helper'

class OrganizationsControllerTest < ActionController::TestCase
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization" do
    assert_difference('Organization.count') do
      post :create, organization: { address: @organization.address, city: @organization.city, ein: @organization.ein, email: @organization.email, email_visible_flag: @organization.email_visible_flag, is_active: @organization.is_active, is_approved: @organization.is_approved, is_deleted: @organization.is_deleted, is_draft: @organization.is_draft, mailing_address: @organization.mailing_address, name: @organization.name, phone: @organization.phone, purpose: @organization.purpose, state: @organization.state, website: @organization.website, zipcode: @organization.zipcode }
    end

    assert_redirected_to organization_path(assigns(:organization))
  end

  test "should show organization" do
    get :show, id: @organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization
    assert_response :success
  end

  test "should update organization" do
    patch :update, id: @organization, organization: { address: @organization.address, city: @organization.city, ein: @organization.ein, email: @organization.email, email_visible_flag: @organization.email_visible_flag, is_active: @organization.is_active, is_approved: @organization.is_approved, is_deleted: @organization.is_deleted, is_draft: @organization.is_draft, mailing_address: @organization.mailing_address, name: @organization.name, phone: @organization.phone, purpose: @organization.purpose, state: @organization.state, website: @organization.website, zipcode: @organization.zipcode }
    assert_redirected_to organization_path(assigns(:organization))
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete :destroy, id: @organization
    end

    assert_redirected_to organizations_path
  end
end
