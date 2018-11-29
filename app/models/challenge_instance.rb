class ChallengeInstance < ApplicationRecord
  belongs_to :challenge
  has_many :challenge_instance_progresses
  has_many :users, through: :challenge_instance_progresses
end
