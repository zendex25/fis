require 'test_helper'

class TeachingExperiencesControllerTest < ActionController::TestCase
  setup do
    @teaching_experience = teaching_experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_experience" do
    assert_difference('TeachingExperience.count') do
      post :create, teaching_experience: { date_employed_from: @teaching_experience.date_employed_from, date_employed_to: @teaching_experience.date_employed_to, exp_other: @teaching_experience.exp_other, faculty_id: @teaching_experience.faculty_id, institution: @teaching_experience.institution, leave_reason: @teaching_experience.leave_reason, position: @teaching_experience.position, salary: @teaching_experience.salary, tot_sems_other: @teaching_experience.tot_sems_other, tot_sems_sbc: @teaching_experience.tot_sems_sbc }
    end

    assert_redirected_to teaching_experience_path(assigns(:teaching_experience))
  end

  test "should show teaching_experience" do
    get :show, id: @teaching_experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_experience
    assert_response :success
  end

  test "should update teaching_experience" do
    patch :update, id: @teaching_experience, teaching_experience: { date_employed_from: @teaching_experience.date_employed_from, date_employed_to: @teaching_experience.date_employed_to, exp_other: @teaching_experience.exp_other, faculty_id: @teaching_experience.faculty_id, institution: @teaching_experience.institution, leave_reason: @teaching_experience.leave_reason, position: @teaching_experience.position, salary: @teaching_experience.salary, tot_sems_other: @teaching_experience.tot_sems_other, tot_sems_sbc: @teaching_experience.tot_sems_sbc }
    assert_redirected_to teaching_experience_path(assigns(:teaching_experience))
  end

  test "should destroy teaching_experience" do
    assert_difference('TeachingExperience.count', -1) do
      delete :destroy, id: @teaching_experience
    end

    assert_redirected_to teaching_experiences_path
  end
end
