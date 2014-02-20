class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.references :faculty, index: true
      t.datetime :date_of_absence

      t.timestamps
    end
  end
end
