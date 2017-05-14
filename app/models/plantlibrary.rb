class Plantlibrary < ActiveRecord::Base
	belongs_to :user
	has_many :plants
	has_many :posts
end
