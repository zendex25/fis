json.array!(@absences) do |absence|
  json.extract! absence, :id, :faculty_id, :date_of_absence
  json.url absence_url(absence, format: :json)
end
