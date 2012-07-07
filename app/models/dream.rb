class Dream < ActiveRecord::Base

  validates :name, :age, :description, :location, { :presence => true, :if => lambda { visible } }
  validate :validate_description_length

  attr_accessible :age, :description, :location, :name, :visible

  has_attached_file :portrait, :styles => { :medium => "300x300", :thumb => "100x100" }

  scope :visible, where(:visible => true)

  private

  def validate_description_length
    unless description && description.length <= 140
      errors.add(:description, "must be less than 140 characters")
    end
  end
end
