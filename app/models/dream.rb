class Dream < ActiveRecord::Base
  attr_accessible :age, :description, :location, :name, :visible

  scope :visible, where(:visible => true)
end
