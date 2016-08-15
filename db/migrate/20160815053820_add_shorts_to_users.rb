class AddShortsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :short, :string
  end
end
