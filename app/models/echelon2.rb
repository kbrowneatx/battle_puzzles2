class Echelon2 < ActiveRecord::Base
  belongs_to :echelon1
  belongs_to :unit_class
end
