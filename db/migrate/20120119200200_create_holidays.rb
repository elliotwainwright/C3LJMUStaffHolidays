class CreateHolidays < ActiveRecord::Migration
  def self.up
    create_table :holidays do |t|
      t.date :date_from
      t.float :number_of_days
      t.date :date_to
      t.timestamps
    end
  end

  def self.down
    drop_table :holidays
  end
end
