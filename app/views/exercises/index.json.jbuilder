json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :calories_burned, :duration, :exercise_type_id
  json.url exercise_url(exercise, format: :json)
end
