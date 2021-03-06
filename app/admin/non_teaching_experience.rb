ActiveAdmin.register NonTeachingExperience do
menu :parent => "FIS", :priority => 5, :label => "Non-Teaching Experience"

index do
          column :faculty do |faculty|
  faculty.faculty.fullname
end
    column :position
    column :institution  
    column "Montly Salary", :salary
    column "Date Employed (From)", :date_employed_from
    column "Date Employed (To)", :date_employed_to
    column "Reasons for Leaving", :leave_reason
    default_actions
  end

    filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
    filter :position
    filter :institution  
    filter :salary, :label => "Montly Salary"
    filter :date_employed_from, :label => "Date Employed (From)"
    filter :date_employed_to, :label => "Date Employed (To)"
    filter :leave_reason, :label => "Reasons for Leaving"

form do |f|
  f.inputs "NonTeachingExperience" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :position
      f.input :institution
      f.input :salary, :label => "Montly Salary"
      f.input :date_employed_from, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Date Employed (From)"
      f.input :date_employed_to, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Date Employed (To)"
      f.input :leave_reason, :label => "Reasons for Leaving"

    

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

permit_params :faculty_id, :position, :institution, :salary, :date_employed_from, :date_employed_to, :leave_reason
  
end

