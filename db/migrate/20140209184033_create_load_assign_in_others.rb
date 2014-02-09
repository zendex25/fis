class CreateLoadAssignInOthers < ActiveRecord::Migration
  def change
    create_table :load_assign_in_others do |t|
      t.references :faculty, index: true
      t.string :institution
      t.string :load_assign_subject
      t.integer :load_assign_unit
      t.string :load_assign_day
      t.datetime :load_assign_time

      t.timestamps
    end
  end
end
