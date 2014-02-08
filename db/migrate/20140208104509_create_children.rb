class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.references :faculty, index: true
      t.string :name
      t.string :sex
      t.integer :age

      t.timestamps
    end
  end
end
