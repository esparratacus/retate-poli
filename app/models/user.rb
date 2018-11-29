class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :challenge_instance_progresses
  has_many :challenge_instances, through: :challenge_instance_progresses
  has_many :challenges, through: :challenge_instances
  has_many :owned_challenges, class_name: 'Challenge',foreign_key: 'owner_id'

  mount_uploader :profile_picture, ProfilePictureUploader

end
