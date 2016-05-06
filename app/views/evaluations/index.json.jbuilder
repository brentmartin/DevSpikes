json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :answer, :completion, :question_id, :survey_id
  json.url evaluation_url(evaluation, format: :json)
end
