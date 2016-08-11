class AddYphotosToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :yphoto
    end
  end

  def self.down
    drop_attached_file :yphoto, :avatar
  end
end
