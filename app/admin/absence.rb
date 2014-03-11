ActiveAdmin.register Absence do
menu :parent => "Absences", :priority => 2, :label => "Absences"
  
index :title => 'Absences' do
  column :faculty do |faculty|
    faculty.faculty.fullname
  end
  column :date_of_absence
  column :on_leave
  default_actions
end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :on_leave

form do |f|
  f.inputs "Absence" do
    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
    f.input :date_of_absence, :as => :date_select
    f.input :on_leave, :as => :select,
      :collection => 
        [['Annual Leave','Annual Leave'],
        ['Sick Leave','Sick Leave'],
        ['No Pay Leave','No Pay Leave'],
        ['Paternal or Maternal Leave','Paternal or Maternal Leave'],
        ['Berievement Leave','Berievement Leave']], :include_blank => true, :label => "On Leave"
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

  permit_params :faculty_id, :date_of_absence, :on_leave
  
end
