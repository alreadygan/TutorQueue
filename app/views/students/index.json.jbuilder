json.array!(@students) do |student|
  json.extract! student, :name, :question, :description
  json.url student_url(student, format: :json)
end