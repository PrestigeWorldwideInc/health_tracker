module ApplicationHelper

  def weight
    @weight = Weight.all
  end

  def calories_lost
    ((40 * 0.74) - (@weight.lbs.last * 0.5741) + (@heart_rate * 0.6509) - 55.0969) * (@exercise.duration.last / 4.184)
  end

end
