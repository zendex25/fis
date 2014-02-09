require 'test_helper'

class ProfessionalMembershipsControllerTest < ActionController::TestCase
  setup do
    @professional_membership = professional_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professional_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professional_membership" do
    assert_difference('ProfessionalMembership.count') do
      post :create, professional_membership: { faculty_id: @professional_membership.faculty_id, membership_date: @professional_membership.membership_date, no_of_yrs: @professional_membership.no_of_yrs, org_name: @professional_membership.org_name, position: @professional_membership.position }
    end

    assert_redirected_to professional_membership_path(assigns(:professional_membership))
  end

  test "should show professional_membership" do
    get :show, id: @professional_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professional_membership
    assert_response :success
  end

  test "should update professional_membership" do
    patch :update, id: @professional_membership, professional_membership: { faculty_id: @professional_membership.faculty_id, membership_date: @professional_membership.membership_date, no_of_yrs: @professional_membership.no_of_yrs, org_name: @professional_membership.org_name, position: @professional_membership.position }
    assert_redirected_to professional_membership_path(assigns(:professional_membership))
  end

  test "should destroy professional_membership" do
    assert_difference('ProfessionalMembership.count', -1) do
      delete :destroy, id: @professional_membership
    end

    assert_redirected_to professional_memberships_path
  end
end
