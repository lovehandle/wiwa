class DreamSubmission < ActiveRecord::Base

  validates :age, :city, :country, :dream, :email, :first_name, :last_name, :state, :presence => true
  validates :state,   :inclusion => { :in => Carmen.state_codes, :if => lambda { |d| d.domestic? } }
  validates :country, :inclusion => { :in => Carmen.country_names }

  attr_accessible :age, :city, :country, :dream, :email, :first_name, :last_name, :state

  def domestic?
    country == "United States"
  end

  def international?
    !domestic?
  end

  def fullname
    [first_name, last_name].compact.join(" ")
  end

  def location
    ([city]).tap do |location|
      location << state if domestic?
      location << country if international?
    end.compact.join(" ")
  end

  def attributes
    { :name => fullname, :location => location, :description => dream }
  end

  def to_dream
    Dream.new(attributes)
  end

end
