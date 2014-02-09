class CreateProfessionalMemberships < ActiveRecord::Migration
  def change
    create_table :professional_memberships do |t|
      t.references :faculty, index: true
      t.string :org_name
      t.datetime :membership_date
      t.integer :no_of_yrs
      t.string :position

      t.timestamps
    end
  end
end
