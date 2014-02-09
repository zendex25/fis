ActiveAdmin.register Faculty do

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
      f.input  :birth_date
      f.input  :civil_status
      f.input  :sex
      f.input  :spouse
      f.input  :marriage_date
      f.input  :occupation
      f.input  :position
      f.input  :employer
      f.input  :employer_tel
      f.input  :no_of_child
      f.input  :no_of_child_studying
      f.input  :no_of_child_working
      end 

      f.has_many :children do |g|
        g.input :name
        g.input :sex
        g.input :age
      end

f.inputs "Faculty" do
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
      f.input  :issued_on
      f.input  :pro_license_expire
      f.input  :academic_rank
      f.input  :faculty_status
    end 


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
