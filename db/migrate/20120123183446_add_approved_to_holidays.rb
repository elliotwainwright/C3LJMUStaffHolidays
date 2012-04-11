class AddApprovedToHolidays < ActiveRecord::Migration
  def self.up
    add_column :holidays, :approved, :boolean
  end

  def self.down
    remove_column :holidays, :approved
  end
end
