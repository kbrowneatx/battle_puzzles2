class UnitType < ActiveRecord::Base
  belongs_to :nation
  belongs_to :unit_class
	
  def self.of_nat(natid)
    if natid
      where('nation_id == ?', natid.to_i)
    else
      scoped
    end
  end
end
