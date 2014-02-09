json.array!(@char_refs) do |char_ref|
  json.extract! char_ref, :id, :faculty_id, :name, :designation, :address, :tel
  json.url char_ref_url(char_ref, format: :json)
end
