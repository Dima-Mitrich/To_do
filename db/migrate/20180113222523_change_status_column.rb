class ChangeStatusColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :businesses, :status, :string
  	add_column :businesses, :status, :integer
  end
end
