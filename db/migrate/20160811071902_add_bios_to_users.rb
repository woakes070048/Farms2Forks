class AddBiosToUsers < ActiveRecord::Migration
  def self.up
  change_table :users do |t|
    t.attachment :bio
  end
end

def self.down
  drop_attached_file :users, :bio
end
end
