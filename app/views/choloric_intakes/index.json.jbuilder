json.array!(@choloric_intakes) do |choloric_intake|
  json.extract! choloric_intake, :id, :calories, :date
  json.url choloric_intake_url(choloric_intake, format: :json)
end
