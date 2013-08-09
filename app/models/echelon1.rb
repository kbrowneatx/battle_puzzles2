class Echelon1 < ActiveRecord::Base
  belongs_to :army
	has_many :echelon2s, :dependent => :destroy
	
	validates :name, presence: true, length: { maximum: 50 }
	accepts_nested_attributes_for :echelon2s, :reject_if => lambda { |a| a[:name].blank? } , :allow_destroy => true	
end
