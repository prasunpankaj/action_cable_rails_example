class User < ApplicationRecord
	has_many :messages
	has_many :channels , :through => :messages 
end
