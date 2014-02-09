json.array!(@civil_service_and_govt_exams) do |civil_service_and_govt_exam|
  json.extract! civil_service_and_govt_exam, :id, :faculty_id, :exam_type, :date_taken, :rating
  json.url civil_service_and_govt_exam_url(civil_service_and_govt_exam, format: :json)
end
