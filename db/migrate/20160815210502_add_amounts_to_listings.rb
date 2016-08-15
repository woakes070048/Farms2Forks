class AddAmountsToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :amount, :decimal
  end
end
