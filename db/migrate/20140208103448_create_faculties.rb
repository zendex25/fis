class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :present_address
      t.string :present_address_tel
      t.string :perma_address
      t.string :perma_address_tel
      t.string :nationality
      t.string :citizen
      t.string :birth_place
      t.datetime :birth_date
      t.string :civil_status
      t.string :sex
      t.string :spouse
      t.datetime :marriage_date
      t.string :occupation
      t.string :position
      t.string :employer
      t.string :employer_tel
      t.integer :no_of_child
      t.integer :no_of_child_studying
      t.integer :no_of_child_working
      t.string :father_name
      t.integer :father_age
      t.string :mother_name
      t.integer :mother_age
      t.string :tin
      t.string :sss
      t.string :gsis
      t.string :philhealth
      t.string :pro_license
      t.string :resid_cert
      t.string :issued_at
      t.datetime :issued_on
      t.datetime :pro_license_expire
      t.string :academic_rank
      t.string :faculty_status

      t.timestamps
    end
  end
end
