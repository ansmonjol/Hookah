class User < ActiveRecord::Base
	def admin?
		admin
	end
	has_many :offers
	has_many :applies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
