class List < ApplicationRecord
	has_many   :businesses, dependent: :destroy
	belongs_to :user
	validates :name, presence: true
	validates_presence_of :user
	validate :list_validate


  private

  def list_validate
  	self.errors.add(:lists, 'too much') if self.user.lists.size > 9
  end
end 
