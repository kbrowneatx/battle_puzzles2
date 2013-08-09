class UnitClass < ActiveRecord::Base

  def self.selectable
    where('id < 8')
  end
	
end
