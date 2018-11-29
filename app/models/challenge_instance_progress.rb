class ChallengeInstanceProgress < ApplicationRecord
  belongs_to :challenge_instance
  belongs_to :user
end
