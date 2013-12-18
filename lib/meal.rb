class Mealtime
  attr_reader :time

  def initialize
    @time = Time.now.hour
  end

  def meal
    case @time
    when 5..7
      "Breakfast"
    when 8..10
      "Second Breakfast"
    when 11..12
      "Elevensies"
    when 13..15
      "Lunch"
    when 16..17
      "Afternoon Tea"
    when 18..20
      "Supper"
    when 21..22
      "Dinner"
    else
      "Go back to sleep, Hobbit!"
    end
  end

  def img
    meal.downcase.gsub(" ", "-").gsub(",", "") + ".jpg"
  end

end