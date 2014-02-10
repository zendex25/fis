ActiveAdmin.register LoadAssignInOther do
menu :parent => "FIS", :priority => 8, :label => "Load In Other School"

index :title => 'Load In Other School' 

form do |f|
  f.inputs "LoadAssignInOther" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
      f.input :institution
      f.input :load_assign_subject
      f.input :load_assign_unit
      f.input :load_assign_day
      f.input :load_assign_time

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
