class Dream < ActiveRecord::Base
  attr_accessible :age, :description, :location, :name, :visible

  has_attached_file :portrait, :styles => { :medium => "300x300", :thumb => "100x100" }
  scope :visible, where(:visible => true)
end
