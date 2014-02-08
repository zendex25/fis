json.array!(@children) do |child|
  json.extract! child, :id, :faculty_id, :name, :sex, :age
  json.url child_url(child, format: :json)
end
