ActiveAdmin.register PublicationsAndResearch do
menu :parent => "FIS", :priority => 7, :label => "Publications and Researches"


index do 
column :faculty do |faculty|
  faculty.faculty.fullname
end

column :organ_name
column :material_type
column :publication_date
column :authorship_type
column :co_author
default_actions
end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :organ_name
filter :material_type
filter :publication_date
filter :authorship_type
filter :co_author

form do |f|
  f.inputs "PublicationsAndResearch" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :organ_name
      f.input :material_type, :as => :select,  :collection => [['Publication','Publication'],['Research','Research'],['Thesis','Thesis'],['Dissertation','Dissertation']]
      f.input :publication_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input :authorship_type, :as => :select,  :collection => [['Single Authorship','Single Authorship'],['Co-Authorship','Co-Authorship'],['Adaptation','Adaptation']]
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

  permit_params :faculty_id, :organ_name, :material_type, :publication_date, :authorship_type, :co_author
  
end
