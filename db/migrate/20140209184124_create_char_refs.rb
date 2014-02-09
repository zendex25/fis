class CreateCharRefs < ActiveRecord::Migration
  def change
    create_table :char_refs do |t|
      t.references :faculty, index: true
      t.string :name
      t.string :designation
      t.string :address
      t.string :tel

      t.timestamps
    end
  end
end
