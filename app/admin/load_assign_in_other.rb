ActiveAdmin.register LoadAssignInOther do
menu :parent => "FIS", :priority => 8, :label => "Load In Other School"

index :title => 'Load In Other School'  do
column :faculty do |faculty|
  faculty.faculty.fullname
end
column :institution
column "Subject", :load_assign_subject
column "Units", :load_assign_unit
column "Days", :load_assign_day
column "Time", :load_assign_time
default_actions
end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :institution
filter :load_assign_subject, :label => "Subject"
filter :load_assign_unit, :label => "Units"
filter :load_assign_day, :label => "Days"
filter :load_assign_time, :label => "Time"

form do |f|
  f.inputs "LoadAssignInOther" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :institution
      f.input :load_assign_subject, :label => "Subject"
      f.input :load_assign_unit, :label => "Units"
      f.input :load_assign_day, :label => "Days"
      f.input :load_assign_time, :label => "Time"

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

permit_params  :faculty_id, :institution, :load_assign_subject, :load_assign_unit, :load_assign_day, :load_assign_time
  
end
