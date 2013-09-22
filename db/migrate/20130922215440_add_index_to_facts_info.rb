class AddIndexToFactsInfo < ActiveRecord::Migration
  def change
    add_index :facts, :info, unique: true
  end
end
