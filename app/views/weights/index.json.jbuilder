json.array!(@weights) do |weight|
  json.extract! weight, :id, :lsb, :date
  json.url weight_url(weight, format: :json)
end
