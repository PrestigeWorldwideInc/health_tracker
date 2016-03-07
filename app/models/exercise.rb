class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  def self.heart_rate
    if self.exertion.last == "Low"
      (208 - (0.7 * self.age.last)) * 0.65
    elsif self.exertion.last == "Medium"
      (208 - (0.7 * self.age.last)) * 0.75
    else
      (208 - (0.7 * self.age.last)) * 0.85
    end
  end

end
