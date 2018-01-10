class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string  :name
      t.string  :status
      t.string  :description
      t.string  :priority
      t.integer :user_id
      t.index   :user_id
      t.integer :list_id
      t.index   :list_id
      t.timestamps
    end
  end
end
