class User < ActiveRecord::Base
  has_many :events
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :profile_photo, ProfilePhotoUploader

  def admin?
   role == "admin"
  end
end
