json.array!(@weights) do |weight|
  json.extract! weight, :id, :lbs, :date
  json.url weight_url(weight, format: :json)
end
