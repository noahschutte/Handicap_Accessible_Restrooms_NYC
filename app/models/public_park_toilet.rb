class PublicParkToilet < ActiveRecord::Base
  # Remember to create a migration!

  def self.get_borough(input)
    self.where(borough: input)
  end

  def self.get_accessible(name)
    park = self.find_by(name: name)
    if park[:handicap_accessible] == nil
      return false
    else
      return true
    end
  end
end
