ActiveAdmin.register PublicationsAndResearch do
menu :parent => "FIS", :priority => 7, :label => "Publications and Researches"

form do |f|
  f.inputs "PublicationsAndResearch" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :organ_name
      f.input :material_type
      f.input :publication_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input :authorship_type
      f.input :co_author
    

  end

f.actions

end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
