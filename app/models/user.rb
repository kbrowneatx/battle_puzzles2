class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
					:registerable,
					:recoverable,
					:rememberable,
					:trackable,
					:validatable
	
	has_many :armies
	
	validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :username, uniqueness: true, length: { maximum: 40 }
end
