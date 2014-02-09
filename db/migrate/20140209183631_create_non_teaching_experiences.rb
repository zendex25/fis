class CreateNonTeachingExperiences < ActiveRecord::Migration
  def change
    create_table :non_teaching_experiences do |t|
      t.references :faculty, index: true
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
