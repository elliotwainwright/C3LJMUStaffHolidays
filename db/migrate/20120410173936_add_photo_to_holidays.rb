class AddPhotoToHolidays < ActiveRecord::Migration
  def self.up
    add_column :holidays, :photo_file_name, :string
    add_column :holidays, :photo_content_type, :string
    add_column :holidays, :photo_file_size, :integer
    add_column :holidays, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :holidays, :photo_updated_at
    remove_column :holidays, :photo_file_size
    remove_column :holidays, :photo_content_type
    remove_column :holidays, :photo_file_name
  end
end
