ActiveAdmin.register Absence do

  
index do
  column :faculty do |faculty|
    faculty.faculty.fullname
  end
  column :date_of_absence
  default_actions
end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :date_of_absence

form do |f|
  f.inputs "CharRef" do
    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
    f.input :date_of_absence, :as => :date_select
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
