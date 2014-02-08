require 'test_helper'

class FacultiesControllerTest < ActionController::TestCase
  setup do
    @faculty = faculties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faculties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faculty" do
    assert_difference('Faculty.count') do
      post :create, faculty: { academic_rank: @faculty.academic_rank, birth_date: @faculty.birth_date, birth_place: @faculty.birth_place, citizen: @faculty.citizen, civil_status: @faculty.civil_status, employer: @faculty.employer, employer_tel: @faculty.employer_tel, faculty_status: @faculty.faculty_status, father_age: @faculty.father_age, father_name: @faculty.father_name, first_name: @faculty.first_name, gsis: @faculty.gsis, issued_at: @faculty.issued_at, issued_on: @faculty.issued_on, last_name: @faculty.last_name, marriage_date: @faculty.marriage_date, middle_name: @faculty.middle_name, mother_age: @faculty.mother_age, mother_name: @faculty.mother_name, nationality: @faculty.nationality, no_of_child: @faculty.no_of_child, no_of_child_studying: @faculty.no_of_child_studying, no_of_child_working: @faculty.no_of_child_working, occupation: @faculty.occupation, perma_address: @faculty.perma_address, perma_address_tel: @faculty.perma_address_tel, philhealth: @faculty.philhealth, position: @faculty.position, present_address: @faculty.present_address, present_address_tel: @faculty.present_address_tel, pro_license: @faculty.pro_license, pro_license_expire: @faculty.pro_license_expire, resid_cert: @faculty.resid_cert, sex: @faculty.sex, spouse: @faculty.spouse, sss: @faculty.sss, tin: @faculty.tin }
    end

    assert_redirected_to faculty_path(assigns(:faculty))
  end

  test "should show faculty" do
    get :show, id: @faculty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faculty
    assert_response :success
  end

  test "should update faculty" do
    patch :update, id: @faculty, faculty: { academic_rank: @faculty.academic_rank, birth_date: @faculty.birth_date, birth_place: @faculty.birth_place, citizen: @faculty.citizen, civil_status: @faculty.civil_status, employer: @faculty.employer, employer_tel: @faculty.employer_tel, faculty_status: @faculty.faculty_status, father_age: @faculty.father_age, father_name: @faculty.father_name, first_name: @faculty.first_name, gsis: @faculty.gsis, issued_at: @faculty.issued_at, issued_on: @faculty.issued_on, last_name: @faculty.last_name, marriage_date: @faculty.marriage_date, middle_name: @faculty.middle_name, mother_age: @faculty.mother_age, mother_name: @faculty.mother_name, nationality: @faculty.nationality, no_of_child: @faculty.no_of_child, no_of_child_studying: @faculty.no_of_child_studying, no_of_child_working: @faculty.no_of_child_working, occupation: @faculty.occupation, perma_address: @faculty.perma_address, perma_address_tel: @faculty.perma_address_tel, philhealth: @faculty.philhealth, position: @faculty.position, present_address: @faculty.present_address, present_address_tel: @faculty.present_address_tel, pro_license: @faculty.pro_license, pro_license_expire: @faculty.pro_license_expire, resid_cert: @faculty.resid_cert, sex: @faculty.sex, spouse: @faculty.spouse, sss: @faculty.sss, tin: @faculty.tin }
    assert_redirected_to faculty_path(assigns(:faculty))
  end

  test "should destroy faculty" do
    assert_difference('Faculty.count', -1) do
      delete :destroy, id: @faculty
    end

    assert_redirected_to faculties_path
  end
end
