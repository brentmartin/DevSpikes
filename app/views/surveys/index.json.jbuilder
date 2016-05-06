json.array!(@surveys) do |survey|
  json.extract! survey, :id, :message, :user_id, :assessment_id
  json.url survey_url(survey, format: :json)
end
