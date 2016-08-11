class AddZphotosToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :zphoto
    end
  end

  def self.down
    drop_attached_file :zphoto, :avatar
  end
end
