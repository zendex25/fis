class CreateEducationalAttainments < ActiveRecord::Migration
  def change
    create_table :educational_attainments do |t|
      t.references :faculty, index: true
      t.string :school_name_elemetary
      t.string :school_location_elementary
      t.datetime :school_yearfrom_elementary
      t.datetime :school_yearto_elementary
      t.string :school_degrees_elementary
      t.string :school_honors_elementary
      t.string :school_name_intermediate
      t.string :school_location_intermediate
      t.datetime :school_yearfrom_intermediate
      t.datetime :school_yearto_intermediate
      t.string :school_degrees_intermediate
      t.string :school_honors_intermediate
      t.string :school_name_secondary
      t.string :school_location_secondary
      t.datetime :school_yearfrom_secondary
      t.datetime :school_yearto_secondary
      t.string :school_degrees_secondary
      t.string :school_honors_secondary
      t.string :school_name_collegiate
      t.string :school_location_collegiate
      t.datetime :school_yearfrom_collegiate
      t.datetime :school_yearto_collegiate
      t.string :school_degrees_collegiate
      t.string :school_honors_collegiate
      t.string :school_name_graduate
      t.string :school_location_graduate
      t.datetime :school_yearfrom_graduate
      t.datetime :school_yearto_graduate
      t.string :school_degrees_graduate
      t.string :school_honors_graduate
      t.string :school_name_doctoral
      t.string :school_location_doctoral
      t.datetime :school_yearfrom_doctoral
      t.datetime :school_yearto_doctoral
      t.string :school_degrees_doctoral
      t.string :school_honors_doctoral
      t.string :college_major
      t.string :college_minor
      t.string :special_studies
      t.string :present_studies

      t.timestamps
    end
  end
end
