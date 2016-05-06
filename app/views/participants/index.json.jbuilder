json.array!(@participants) do |participant|
  json.extract! participant, :id, :relation, :user_id, :survey_id
  json.url participant_url(participant, format: :json)
end
