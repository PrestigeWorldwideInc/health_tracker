module ApplicationHelper
  def exercise_name
    if "Cardio"
      exercise_type_id = 1
    elsif "Weight Training"
      exercise_type_id = 2
    end
  end
end
