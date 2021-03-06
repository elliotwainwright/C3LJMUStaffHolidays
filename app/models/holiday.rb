class Holiday < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_from, :number_of_days, :date_to, :approved, :photo 
  validates_presence_of :number_of_days

  has_attached_file :photo, :styles => { :small => "150x150>", },
                    :url  => "/assets/holidays/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/holidays/:id/:style/:basename.:extension"
                    
  def self.search(search, page)
   paginate :per_page => 8, :page => params[:page]
  end
end
