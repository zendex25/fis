json.array!(@publications_and_researches) do |publications_and_research|
  json.extract! publications_and_research, :id, :faculty_id, :organ_name, :material_type, :publication_date, :authorship_type, :co_author
  json.url publications_and_research_url(publications_and_research, format: :json)
end
