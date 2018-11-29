json.extract! challenge_instance, :id,:is_public,:is_active ,:closed_on,:created_at, :updated_at
json.url challenge_challenge_instances_url(challenge_instance, format: :json)
