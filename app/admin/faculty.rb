ActiveAdmin.register Faculty do



  menu :parent => "FIS", :priority => 1, :label => "Personal Record"

  index :title => 'Personal Records' do
    column :id
    column :last_name
    column :first_name
    column :academic_rank
    column :faculty_status
    column :faculty_status2
    column :tbi
    column :department
    default_actions
  end

  filter :last_name
  filter :first_name
  
  
  
  filter :academic_rank
  filter :faculty_status
  filter :faculty_status2
  filter :tbi
  filter :department

  form do |f|

    f.inputs "Personal Record" do
      f.input :last_name, :label => "Last Name"
      f.input  :first_name, :label => "First Name"
      f.input  :middle_name, :label => "Middle Name"
      f.input  :present_address, :label => "Present Address"
      f.input  :present_address_tel, :label => "Tel. No."
      f.input  :perma_address, :label => "Permanent Address"
      f.input  :perma_address_tel, :label => "Tel. No."
      f.input  :nationality
      f.input  :citizen
      f.input  :birth_place, :label => "Place of Birth"
      f.input  :birth_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year - 17, :label => "Date of Birth"

      f.input  :civil_status, :as => :radio,  :collection => [['Single','Single'],['Married','Married'],['Separated','Separated'],['Widow/Widower','Widow/Widower']]
      f.input  :sex, :as => :radio,  :collection => [['Male','Male'],['Female','Female']]
      f.input  :spouse
      f.input  :marriage_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Date of Marriage"
      f.input  :occupation
      f.input  :position
      f.input  :employer
      f.input  :employer_tel, :label => "Tel. No."
      f.input  :no_of_child, :label => "No. of Children"
      f.input  :no_of_child_studying, :label => "No. of Children Studying"
      f.input  :no_of_child_working, :label => "No. of Children Working"
    
      
    
      
    


    
      f.input  :father_name, :label => "Father's Name"
      f.input  :father_age, :label => "Age"
      f.input  :mother_name, :label => "Mother's Name"
      f.input  :mother_age, :label => "Age"
      f.input  :tin, :label => "TIN No."
      f.input  :sss, :label => "SSS No."
      f.input  :gsis, :label => "GSIS No."
      f.input  :philhealth, :label => "Philhealth No."
      f.input  :pagibig, :label => "Pag-IBIG No."
      f.input  :resid_cert, :label => "Residence Certificate No."
      f.input  :pro_license, :label => "Professional License No."
      f.input  :pro_license_expire, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Prof. License No. Expiry Date"
      f.input  :issued_at
      f.input  :issued_on, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input  :academic_rank, :label => "Academic Rank"
      f.input  :faculty_status, :as => :radio,  :collection => [['Full-time','Full-time'],['Part-time','Part-time'],['Special Lecturer','Special Lecturer'],['Others','Others']], :label => "Faculty Status"
      f.input  :faculty_status2, :as => :radio,  :collection => [['1st Probationary','1st Probationary'],['2nd Probationary','2nd Probationary'],['3rd Probationary','3rd Probationary'],['4th Probationary','4th Probationary'],['Regular/Permanent','Regular/Permanent'],['Administrator','Administrator']], :label => "Faculty Status 2"
      f.input  :tbi, :label => "TBI"
      f.input  :department, :as => :select,
        :collection => 
          [['Accountancy','Accountancy'],
          ['Business Management and Entrepreneur','Business Management and Entrepreneur'],
          ['Information Technology','Information Technology'],
          ['Marketing Management','Marketing Management'],
          ['Economics','Economics'],
          ['Financial Management','Financial Management'],
          ['Psychology','Psychology'],
          ['Legal Management','Legal Management'],
          ['G
            eneral Education','General Education'],
          ['National Service Training Program','National Service Training Program'],
          ['Human Kinetics Development','Human Kinetics Development']], :label => "CAS Department"
      f.input  :contractfrom, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Contract Start"
      f.input  :contractto, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year, :label => "Contract End"
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

  permit_params :last_name,  :first_name,  :middle_name,  :present_address,  :present_address_tel,  :perma_address,  :perma_address_tel,  :nationality,  :citizen,  :birth_place,  :birth_date,  :civil_status,  :sex,  :spouse,  :marriage_date,  :occupation,  :position,  :employer,  :employer_tel,  :no_of_child,  :no_of_child_studying,  :no_of_child_working,  :father_name,  :father_age,  :mother_name,  :mother_age,  :tin,  :sss,  :gsis,  :philhealth,  :pro_license,  :resid_cert,  :issued_at,  :issued_on,  :pro_license_expire,  :academic_rank,  :faculty_status, :faculty_status2, :pagibig, :tbi, :department, :contractto, :contractfrom,
    children_attributes: [:name, :sex, :age, :_destroy]  

  controller do
    def show
        @faculty = Faculty.find(params[:id])
        @versions = @faculty.versions
        @faculty = @faculty.versions[params[:version].to_i].reify if params[:version]
        show! #it seems to need this
    end
  end
    sidebar :versionate, :partial => "layouts/version", :only => :show

  member_action :history do
    @faculty = Faculty.find(params[:id])
    @versions = @faculty.versions
    render "layouts/history"
  end

end
