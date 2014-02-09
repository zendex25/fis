json.array!(@professional_memberships) do |professional_membership|
  json.extract! professional_membership, :id, :faculty_id, :org_name, :membership_date, :no_of_yrs, :position
  json.url professional_membership_url(professional_membership, format: :json)
end
