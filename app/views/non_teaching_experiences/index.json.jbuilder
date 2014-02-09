json.array!(@non_teaching_experiences) do |non_teaching_experience|
  json.extract! non_teaching_experience, :id, :faculty_id, :position, :institution, :salary, :date_employed_from, :date_employed_to, :leave_reason
  json.url non_teaching_experience_url(non_teaching_experience, format: :json)
end
