json.array!(@assessments) do |assessment|
  json.extract! assessment, :id, :title, :description, :question, :answer
  json.url assessment_url(assessment, format: :json)
end
