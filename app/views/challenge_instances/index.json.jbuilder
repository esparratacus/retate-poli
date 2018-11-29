json.set! :data do
  json.array! @challenge_instances do |challenge_instance|
    json.partial! 'challenge_instances/challenge_instance', challenge_instance: challenge_instance
    json.url  "
              #{link_to_icon 'edit', edit_challenge_challenge_instance_path(challenge_instance.challenge_id,challenge_instance.id)}
              #{link_to_icon 'delete', challenge_challenge_instance_path(challenge_instance.challenge_id,challenge_instance.id), method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end