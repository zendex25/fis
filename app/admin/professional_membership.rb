ActiveAdmin.register ProfessionalMembership do
menu :parent => "FIS", :priority => 6, :label => "Professional Memberships"

index do

    column :faculty do |faculty|
  faculty.faculty.fullname
end
column :org_name
column :membership_date
column :no_of_yrs
column :position
default_actions

end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :org_name
filter :membership_date
filter :no_of_yrs
filter :position

form do |f|
  f.inputs "ProfessionalMembership" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :org_name
      f.input :membership_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input :no_of_yrs
      f.input :position
    

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

  permit_params :faculty_id, :org_name, :membership_date, :no_of_yrs, :position
  
end
