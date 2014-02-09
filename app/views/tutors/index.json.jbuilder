json.array!(@tutors) do |tutor|
  json.extract! tutor, :password
  json.url tutor_url(tutor, format: :json)
end