ActiveAdmin.register CivilServiceAndGovtExam do
menu :parent => "FIS", :priority => 3, :label => "Civ. Serv. & Govt. Exams"

form do |f|
  f.inputs "CivilServiceAndGovtExam" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :exam_type
      f.input :date_taken, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input :rating

    

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
