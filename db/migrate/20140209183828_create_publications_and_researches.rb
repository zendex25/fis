class CreatePublicationsAndResearches < ActiveRecord::Migration
  def change
    create_table :publications_and_researches do |t|
      t.references :faculty, index: true
      t.string :organ_name
      t.string :material_type
      t.datetime :publication_date
      t.string :authorship_type
      t.string :co_author

      t.timestamps
    end
  end
end
