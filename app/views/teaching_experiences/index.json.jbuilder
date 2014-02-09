json.array!(@teaching_experiences) do |teaching_experience|
  json.extract! teaching_experience, :id, :faculty_id, :tot_sems_sbc, :tot_sems_other, :exp_other, :position, :institution, :salary, :date_employed_from, :date_employed_to, :leave_reason
  json.url teaching_experience_url(teaching_experience, format: :json)
end
