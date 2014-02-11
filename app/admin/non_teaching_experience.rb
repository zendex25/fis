ActiveAdmin.register NonTeachingExperience do
menu :parent => "FIS", :priority => 5, :label => "Non-Teaching Experience"

form do |f|
  f.inputs "NonTeachingExperience" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :position
      f.input :institution
      f.input :salary
      f.input :date_employed_from, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input :date_employed_to, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input :leave_reason

    

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
