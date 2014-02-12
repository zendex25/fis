ActiveAdmin.register CivilServiceAndGovtExam do
menu :parent => "FIS", :priority => 3, :label => "Civ. Serv. & Govt. Exams"

index :title => 'Civil Service & Government Examinations' do
  column :faculty do |faculty|
  faculty.faculty.fullname
end
  column "Type of Examination", :exam_type
  column :date_taken
  column :rating
  default_actions
end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :exam_type, :label => "Type of Examination"
filter :date_taken
filter :rating

form do |f|
  f.inputs "CivilServiceAndGovtExam" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :exam_type, :label => "Type of Examination"
      f.input :date_taken, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Date Taken"
      f.input :rating, :label => "Rating"

    

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
  
permit_params :faculty_id, :exam_type, :date_taken, :rating

end
