class AddIndexToCreatedAt < ActiveRecord::Migration
  def change
    add_index :facts, :created_at
  end
end
