json.array!(@step_counts) do |step_count|
  json.extract! step_count, :id, :steps_taken, :date
  json.url step_count_url(step_count, format: :json)
end
