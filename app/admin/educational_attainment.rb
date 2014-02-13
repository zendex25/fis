ActiveAdmin.register EducationalAttainment do
  menu :parent => "FIS", :priority => 2, :label => "Educational Attainment"

  index :title => 'Personal Records' do
    column :faculty do |faculty|
      faculty.faculty.fullname
    end
    column :school_name_elemetary
    column :school_name_intermediate
    column :school_name_secondary
    column :school_name_collegiate
    column :school_degrees_collegiate
    column :school_honors_collegiate
    column :school_name_graduate
    column :school_degrees_graduate
    column :school_honors_graduate
    column :school_name_doctoral
    column :school_degrees_doctoral
    column :school_honors_doctoral
    column :college_major
    column :college_minor
    column :special_studies
    column :present_studies
    default_actions
  end

  filter :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.fullname, u.id]}, :include_blank => false
  filter :school_name_elemetary
  filter :school_name_intermediate
  filter :school_name_secondary
  filter :school_name_collegiate
  filter :school_degrees_collegiate
  filter :school_honors_collegiate
  filter :school_name_graduate
  filter :school_degrees_graduate
  filter :school_honors_graduate
  filter :school_name_doctoral
  filter :school_degrees_doctoral
  filter :school_honors_doctoral
  filter :college_major
  filter :college_minor
  filter :special_studies
  filter :present_studies

  form do |f|
  

    f.inputs "Select Faculty" do

      f.input :faculty_id, :as => :select, :collection => Faculty.all.map {|u| [u.last_name, u.id]}, :include_blank => false

    end

    f.inputs "Elementary" do

      f.input :school_name_elemetary, :label => "School Name"
      f.input :school_location_elementary, :label => "School Location"
      f.input :school_yearfrom_elementary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true, :label => "Years Attended (From)"
      f.input :school_yearto_elementary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true, :label => "Years Attended (To)"
      f.input :school_degrees_elementary, :label => "Degrees/Title or Diploma"
      f.input :school_honors_elementary, :label => "Honors Received"

    end

    f.inputs "Intermediate" do

      f.input :school_name_intermediate, :label => "School Name"
      f.input :school_location_intermediate, :label => "School Location"
      f.input :school_yearfrom_intermediate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true, :label => "Years Attended (From)"
      f.input :school_yearto_intermediate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true, :label => "Years Attended (To)"
      f.input :school_degrees_intermediate, :label => "Degrees/Title or Diploma"
      f.input :school_honors_intermediate, :label => "Honors Received"

    end

    f.inputs "Secondary" do

      f.input :school_name_secondary, :label => "School Name"
      f.input :school_location_secondary, :label => "School Location"
      f.input :school_yearfrom_secondary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true, :label => "Years Attended (From)"
      f.input :school_yearto_secondary, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true, :label => "Years Attended (To)"
      f.input :school_degrees_secondary, :label => "Degrees/Title or Diploma"
      f.input :school_honors_secondary, :label => "Honors Received"

    end

    f.inputs "Collegiate" do

      f.input :school_name_collegiate, :label => "School Name"
      f.input :school_location_collegiate, :label => "School Location"
      f.input :school_yearfrom_collegiate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true, :label => "Years Attended (From)"
      f.input :school_yearto_collegiate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true, :label => "Years Attended (To)"
      f.input :school_degrees_collegiate, :label => "Degrees/Title or Diploma"
      f.input :school_honors_collegiate, :label => "Honors Received"
    
    end

    f.inputs "Graduate" do

      f.input :school_name_graduate, :label => "School Name"
      f.input :school_location_graduate, :label => "School Location"
      f.input :school_yearfrom_graduate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true, :label => "Years Attended (From)"
      f.input :school_yearto_graduate, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true, :label => "Years Attended (To)"
      f.input :school_degrees_graduate, :label => "Degrees/Title or Diploma"
      f.input :school_honors_graduate, :label => "Honors Received"

    end

    f.inputs "Doctoral" do

      f.input :school_name_doctoral, :label => "School Name"
      f.input :school_location_doctoral, :label => "School Location"
      f.input :school_yearfrom_doctoral, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :discard_month => true, :discard_day => true, :label => "Years Attended (From)"
      f.input :school_yearto_doctoral, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year + 12, :discard_month => true, :discard_day => true, :label => "Years Attended (To)"
      f.input :school_degrees_doctoral, :label => "Degrees/Title or Diploma"
      f.input :school_honors_doctoral, :label => "Honors Received"  

    end

    f.inputs do

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

