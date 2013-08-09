class Nation < ActiveRecord::Base
  belongs_to :era

  def self.of_era(per)
    if per
      where('era_id == ?', per.to_i)
    else
      scoped
    end
  end
end
