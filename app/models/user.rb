class User < ActiveRecord::Base
  has_many :events
  has_many :comments

  has_many :eventusers
  has_many :events, through: :eventusers

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: "Friendship",
                                 foreign_key: "friend_id"
  has_many :inverse_friends, through: :inverse_friendships, source: :user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :profile_photo, ProfilePhotoUploader

  scope :nonfriends, -> (user) { where.not(id: user.friends.ids << user.id) }

  def admin?
   role == "admin"
  end
end
