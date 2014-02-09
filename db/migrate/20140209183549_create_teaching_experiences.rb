class CreateTeachingExperiences < ActiveRecord::Migration
  def change
    create_table :teaching_experiences do |t|
      t.references :faculty, index: true
      t.integer :tot_sems_sbc
      t.integer :tot_sems_other
      t.string :exp_other
      t.string :position
      t.string :institution
      t.integer :salary
      t.datetime :date_employed_from
      t.datetime :date_employed_to
      t.string :leave_reason

      t.timestamps
    end
  end
end
