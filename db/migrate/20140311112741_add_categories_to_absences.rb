class AddCategoriesToAbsences < ActiveRecord::Migration
  def change
  	add_column :absences, :on_leave, :text
  end
end
