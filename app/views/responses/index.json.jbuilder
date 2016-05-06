json.array!(@responses) do |response|
  json.extract! response, :id, :answer, :completion, :question_id, :participant_id
  json.url response_url(response, format: :json)
end
