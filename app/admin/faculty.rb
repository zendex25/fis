ActiveAdmin.register Faculty do

  menu :parent => "FIS", :priority => 1, :label => "Personal Record"

  index :title => 'Personal Records' do
    column :id
    column :last_name
    column :first_name
    column :position
    column :employer
    column :academic_rank
    column :faculty_status
    default_actions
  end

  filter :last_name
  filter :first_name
  filter :position
  filter :employer
  filter :academic_rank
  filter :faculty_status

  form do |f|

    f.inputs "Faculty" do
      f.input :last_name
      f.input  :first_name
      f.input  :middle_name
      f.input  :present_address
      f.input  :present_address_tel
      f.input  :perma_address
      f.input  :perma_address_tel
      f.input  :nationality
      f.input  :citizen
      f.input  :birth_place
      f.input  :birth_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year - 17

      f.input  :civil_status
      f.input  :sex
      f.input  :spouse
      f.input  :marriage_date, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input  :occupation
      f.input  :position
      f.input  :employer
      f.input  :employer_tel
      f.input  :no_of_child
      f.input  :no_of_child_studying
      f.input  :no_of_child_working
      

      f.has_many :children do |g|
        g.input :name
        g.input :sex
        g.input :age
        g.input :_destroy, :as => :boolean
        
      end



      f.input  :father_name
      f.input  :father_age
      f.input  :mother_name
      f.input  :mother_age
      f.input  :tin
      f.input  :sss
      f.input  :gsis
      f.input  :philhealth
      f.input  :pro_license
      f.input  :resid_cert
      f.input  :issued_at
      f.input  :issued_on, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input  :pro_license_expire, :as => :date_select, start_year: Time.now.year - 100, end_year: Time.now.year
      f.input  :academic_rank
      f.input  :faculty_status
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

  permit_params :last_name,  :first_name,  :middle_name,  :present_address,  :present_address_tel,  :perma_address,  :perma_address_tel,  :nationality,  :citizen,  :birth_place,  :birth_date,  :civil_status,  :sex,  :spouse,  :marriage_date,  :occupation,  :position,  :employer,  :employer_tel,  :no_of_child,  :no_of_child_studying,  :no_of_child_working,  :father_name,  :father_age,  :mother_name,  :mother_age,  :tin,  :sss,  :gsis,  :philhealth,  :pro_license,  :resid_cert,  :issued_at,  :issued_on,  :pro_license_expire,  :academic_rank,  :faculty_status,
    children_attributes: [:name, :sex, :age, :_destroy]  
end
