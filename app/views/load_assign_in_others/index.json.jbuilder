json.array!(@load_assign_in_others) do |load_assign_in_other|
  json.extract! load_assign_in_other, :id, :faculty_id, :institution, :load_assign_subject, :load_assign_unit, :load_assign_day, :load_assign_time
  json.url load_assign_in_other_url(load_assign_in_other, format: :json)
end
