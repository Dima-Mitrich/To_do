class Business < ApplicationRecord
	belongs_to :user

	belongs_to :list

	validates  :name, presence: true 

	validates  :description,	length: { minimum: 5 } 
end
