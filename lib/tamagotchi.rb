class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end
  define_method(:food_level) do
    @food_level
  end
  define_method(:sleep_level) do
    @sleep_level
  end
  define_method(:activity_level) do
    @activity_level
  end
  define_method(:name) do
    @name
  end
  define_method(:is_alive) do
    if self.food_level > 0 && self.sleep_level > 0
      return true
    else
      return false
    end
  end
  define_method(:is_tired) do
    if self.sleep_level < 5
      return true
    else
      return false
    end
  end
  define_method(:is_hungry) do
    if self.food_level < 5
      return true
    else
      return false
    end
  end
  define_method(:is_bored) do
    if self.activity_level < 5
      return true
    else
      return false
    end
  end
  define_method(:feed) do
    if self.food_level < 10
      @food_level += 3
    end
  end
  define_method(:play) do
    if self.activity_level < 10
      @activity_level += 2
    end
  end
  define_method(:to_bed) do
    if self.sleep_level < 10
      @sleep_level += 4
    end
  end
  define_method(:change_attr) do |food, sleep_level, activity_level|
    @sleep_level = sleep_level
    @food_level = food
    @activity_level = activity_level
  end
end
