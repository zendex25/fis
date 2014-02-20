class AddContractsToFaculties < ActiveRecord::Migration
  def change
    add_column :faculties, :contractfrom, :datetime
    add_column :faculties, :contractto, :datetime
  end
end
