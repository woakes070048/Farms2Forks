class AddXphotosToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :xphoto
    end
  end

  def self.down
    drop_attached_file :xphoto, :avatar
  end
end
