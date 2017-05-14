class User < ActiveRecord::Base

	has_secure_password
	has_one :plantlibrary
	belongs_to :plantclub
	
end
