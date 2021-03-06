class User < ApplicationRecord
  has_many :lists	
  has_many :businesses, through: :lists
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
end
