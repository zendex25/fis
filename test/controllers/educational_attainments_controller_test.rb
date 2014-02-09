require 'test_helper'

class EducationalAttainmentsControllerTest < ActionController::TestCase
  setup do
    @educational_attainment = educational_attainments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educational_attainments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educational_attainment" do
    assert_difference('EducationalAttainment.count') do
      post :create, educational_attainment: { college_major: @educational_attainment.college_major, college_minor: @educational_attainment.college_minor, faculty_id: @educational_attainment.faculty_id, present_studies: @educational_attainment.present_studies, school_degrees_collegiate: @educational_attainment.school_degrees_collegiate, school_degrees_doctoral: @educational_attainment.school_degrees_doctoral, school_degrees_elementary: @educational_attainment.school_degrees_elementary, school_degrees_graduate: @educational_attainment.school_degrees_graduate, school_degrees_intermediate: @educational_attainment.school_degrees_intermediate, school_degrees_secondary: @educational_attainment.school_degrees_secondary, school_honors_collegiate: @educational_attainment.school_honors_collegiate, school_honors_doctoral: @educational_attainment.school_honors_doctoral, school_honors_elementary: @educational_attainment.school_honors_elementary, school_honors_graduate: @educational_attainment.school_honors_graduate, school_honors_intermediate: @educational_attainment.school_honors_intermediate, school_honors_secondary: @educational_attainment.school_honors_secondary, school_location_collegiate: @educational_attainment.school_location_collegiate, school_location_doctoral: @educational_attainment.school_location_doctoral, school_location_elementary: @educational_attainment.school_location_elementary, school_location_graduate: @educational_attainment.school_location_graduate, school_location_intermediate: @educational_attainment.school_location_intermediate, school_location_secondary: @educational_attainment.school_location_secondary, school_name_collegiate: @educational_attainment.school_name_collegiate, school_name_doctoral: @educational_attainment.school_name_doctoral, school_name_elemetary: @educational_attainment.school_name_elemetary, school_name_graduate: @educational_attainment.school_name_graduate, school_name_intermediate: @educational_attainment.school_name_intermediate, school_name_secondary: @educational_attainment.school_name_secondary, school_yearfrom_collegiate: @educational_attainment.school_yearfrom_collegiate, school_yearfrom_doctoral: @educational_attainment.school_yearfrom_doctoral, school_yearfrom_elementary: @educational_attainment.school_yearfrom_elementary, school_yearfrom_graduate: @educational_attainment.school_yearfrom_graduate, school_yearfrom_intermediate: @educational_attainment.school_yearfrom_intermediate, school_yearfrom_secondary: @educational_attainment.school_yearfrom_secondary, school_yearto_collegiate: @educational_attainment.school_yearto_collegiate, school_yearto_doctoral: @educational_attainment.school_yearto_doctoral, school_yearto_elementary: @educational_attainment.school_yearto_elementary, school_yearto_graduate: @educational_attainment.school_yearto_graduate, school_yearto_intermediate: @educational_attainment.school_yearto_intermediate, school_yearto_secondary: @educational_attainment.school_yearto_secondary, special_studies: @educational_attainment.special_studies }
    end

    assert_redirected_to educational_attainment_path(assigns(:educational_attainment))
  end

  test "should show educational_attainment" do
    get :show, id: @educational_attainment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @educational_attainment
    assert_response :success
  end

  test "should update educational_attainment" do
    patch :update, id: @educational_attainment, educational_attainment: { college_major: @educational_attainment.college_major, college_minor: @educational_attainment.college_minor, faculty_id: @educational_attainment.faculty_id, present_studies: @educational_attainment.present_studies, school_degrees_collegiate: @educational_attainment.school_degrees_collegiate, school_degrees_doctoral: @educational_attainment.school_degrees_doctoral, school_degrees_elementary: @educational_attainment.school_degrees_elementary, school_degrees_graduate: @educational_attainment.school_degrees_graduate, school_degrees_intermediate: @educational_attainment.school_degrees_intermediate, school_degrees_secondary: @educational_attainment.school_degrees_secondary, school_honors_collegiate: @educational_attainment.school_honors_collegiate, school_honors_doctoral: @educational_attainment.school_honors_doctoral, school_honors_elementary: @educational_attainment.school_honors_elementary, school_honors_graduate: @educational_attainment.school_honors_graduate, school_honors_intermediate: @educational_attainment.school_honors_intermediate, school_honors_secondary: @educational_attainment.school_honors_secondary, school_location_collegiate: @educational_attainment.school_location_collegiate, school_location_doctoral: @educational_attainment.school_location_doctoral, school_location_elementary: @educational_attainment.school_location_elementary, school_location_graduate: @educational_attainment.school_location_graduate, school_location_intermediate: @educational_attainment.school_location_intermediate, school_location_secondary: @educational_attainment.school_location_secondary, school_name_collegiate: @educational_attainment.school_name_collegiate, school_name_doctoral: @educational_attainment.school_name_doctoral, school_name_elemetary: @educational_attainment.school_name_elemetary, school_name_graduate: @educational_attainment.school_name_graduate, school_name_intermediate: @educational_attainment.school_name_intermediate, school_name_secondary: @educational_attainment.school_name_secondary, school_yearfrom_collegiate: @educational_attainment.school_yearfrom_collegiate, school_yearfrom_doctoral: @educational_attainment.school_yearfrom_doctoral, school_yearfrom_elementary: @educational_attainment.school_yearfrom_elementary, school_yearfrom_graduate: @educational_attainment.school_yearfrom_graduate, school_yearfrom_intermediate: @educational_attainment.school_yearfrom_intermediate, school_yearfrom_secondary: @educational_attainment.school_yearfrom_secondary, school_yearto_collegiate: @educational_attainment.school_yearto_collegiate, school_yearto_doctoral: @educational_attainment.school_yearto_doctoral, school_yearto_elementary: @educational_attainment.school_yearto_elementary, school_yearto_graduate: @educational_attainment.school_yearto_graduate, school_yearto_intermediate: @educational_attainment.school_yearto_intermediate, school_yearto_secondary: @educational_attainment.school_yearto_secondary, special_studies: @educational_attainment.special_studies }
    assert_redirected_to educational_attainment_path(assigns(:educational_attainment))
  end

  test "should destroy educational_attainment" do
    assert_difference('EducationalAttainment.count', -1) do
      delete :destroy, id: @educational_attainment
    end

    assert_redirected_to educational_attainments_path
  end
end
