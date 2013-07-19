class Count < ActiveRecord::Base
  attr_accessible :value

  def self.value
    c = self.first_or_create!
    c.value
  end

  def self.value=(new)
    c = self.first_or_create!
    c.value = new
    c.save!
  end
end
