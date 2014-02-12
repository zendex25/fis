ActiveAdmin.register CharRef do
menu :parent => "FIS", :priority => 9, :label => "Character References"

index :title => 'Character References'  do
    column :faculty do |faculty|
  faculty.faculty.fullname
end
  column :name
  column :designation
  column "Official Address", :address
  column "Tel. No.", :tel
  default_actions
end

filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
filter :name
filter :designation
filter :address, :label => "Official Address"
filter :tel, :label => "Tel. No."

form do |f|
  f.inputs "CharRef" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :name
      f.input :designation
      f.input :address, :label => "Official Address"
      f.input :tel, :label => "Tel. No."


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

  permit_params :faculty_id, :name, :designation, :address, :tel
  
end
