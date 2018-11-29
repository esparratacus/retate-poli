class Challenge < ApplicationRecord
  has_many :challenge_instances
  mount_uploader :challenge_image,ChallengeImageUploader
end
