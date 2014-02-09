class CreateCivilServiceAndGovtExams < ActiveRecord::Migration
  def change
    create_table :civil_service_and_govt_exams do |t|
      t.references :faculty, index: true
      t.string :exam_type
      t.datetime :date_taken
      t.string :rating

      t.timestamps
    end
  end
end
