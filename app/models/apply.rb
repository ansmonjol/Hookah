class Apply < ActiveRecord::Base
	has_many :user
	has_many :offer
end
