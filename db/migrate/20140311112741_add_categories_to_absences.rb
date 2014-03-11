class AddCategoriesToAbsences < ActiveRecord::Migration
  def change
  	add_column :absences, :on_leave, :string
  end
end
