class DreamSubmission < ActiveRecord::Base
  attr_accessible :age, :city, :country, :dream, :email, :first_name, :last_name, :state
end
