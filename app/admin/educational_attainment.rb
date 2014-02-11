ActiveAdmin.register EducationalAttainment do
  menu :parent => "FIS", :priority => 2, :label => "Educational Attainment"



  form do |f|
  f.inputs "EducationalAttainment" do



    f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false
    f.input :school_name_elemetary
    f.input :school_location_elementary
      f.input :school_yearfrom_elementary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true
      f.input :school_yearto_elementary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true
      f.input :school_degrees_elementary
      f.input :school_honors_elementary
      f.input :school_name_intermediate
      f.input :school_location_intermediate
      f.input :school_yearfrom_intermediate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true
      f.input :school_yearto_intermediate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true
      f.input :school_degrees_intermediate
      f.input :school_honors_intermediate
      f.input :school_name_secondary
      f.input :school_location_secondary
      f.input :school_yearfrom_secondary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true
      f.input :school_yearto_secondary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true
      f.input :school_degrees_secondary
      f.input :school_honors_secondary
      f.input :school_name_collegiate
      f.input :school_location_collegiate
      f.input :school_yearfrom_collegiate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true
      f.input :school_yearto_collegiate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true
      f.input :school_degrees_collegiate
      f.input :school_honors_collegiate
      f.input :school_name_graduate
      f.input :school_location_graduate
      f.input :school_yearfrom_graduate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true
      f.input :school_yearto_graduate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true
      f.input :school_degrees_graduate
      f.input :school_honors_graduate
      f.input :school_name_doctoral
      f.input :school_location_doctoral
      f.input :school_yearfrom_doctoral, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true
      f.input :school_yearto_doctoral, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true
      f.input :school_degrees_doctoral
      f.input :school_honors_doctoral
      f.input :college_major
      f.input :college_minor
      f.input :special_studies
      f.input :present_studies


    
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
