class AddDetailsToFaculties < ActiveRecord::Migration
  def change
    add_column :faculties, :faculty_status2, :string
    add_column :faculties, :pagibig, :string
    add_column :faculties, :tbi, :string
    add_column :faculties, :department, :string
  end
end
