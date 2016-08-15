class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Profile picture
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # 1st Farm photo
  has_attached_file :xphoto, :styles => { :medium => "160x160#", :thumb => "200x200#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :xphoto, :content_type => /\Aimage\/.*\Z/

  # 2nd Farm photo
  has_attached_file :yphoto, :styles => { :medium => "160x160#", :thumb => "200x200#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :yphoto, :content_type => /\Aimage\/.*\Z/

  # 3rd Farm photo
  has_attached_file :zphoto, :styles => { :medium => "160x160#", :thumb => "200x200#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :zphoto, :content_type => /\Aimage\/.*\Z/

  ratyrate_rater

  ratyrate_rateable 'user'

  has_many :listings
end
