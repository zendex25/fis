json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :last_name, :first_name, :middle_name, :present_address, :present_address_tel, :perma_address, :perma_address_tel, :nationality, :citizen, :birth_place, :birth_date, :civil_status, :sex, :spouse, :marriage_date, :occupation, :position, :employer, :employer_tel, :no_of_child, :no_of_child_studying, :no_of_child_working, :father_name, :father_age, :mother_name, :mother_age, :tin, :sss, :gsis, :philhealth, :pro_license, :resid_cert, :issued_at, :issued_on, :pro_license_expire, :academic_rank, :faculty_status
  json.url faculty_url(faculty, format: :json)
end
