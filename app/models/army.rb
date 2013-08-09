class Army < ActiveRecord::Base
  belongs_to :user
  belongs_to :era
  belongs_to :nation
	has_many :echelon1s, :dependent => :destroy
	
	validates :name, presence: true, length: { maximum: 50 }
	accepts_nested_attributes_for :echelon1s, :reject_if => lambda { |a| a[:name].blank? } , :allow_destroy => true
end
