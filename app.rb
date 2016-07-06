require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get("/") do
  erb(:index)
end
post("/tamagotchi") do
  @@tamagotchi = Tamagotchi.new(@name.to_s)
  @@life_time = @@tamagotchi.update_time()
  @@name = params.fetch("name")
  @food_level = @@tamagotchi.food_level()
  @sleep_level = @@tamagotchi.sleep_level()
  @activity_level = @@tamagotchi.activity_level()
  erb(:status)
end

post("/feed") do
  @@life_time = @@tamagotchi.update_time()
  @food_level = @@tamagotchi.feed()
  @sleep_level = @@tamagotchi.sleep_level()
  @activity_level = @@tamagotchi.activity_level()
  erb(:status)
end
post("/play") do
  @@life_time = @@tamagotchi.update_time()
  @food_level = @@tamagotchi.food_level()
  @sleep_level = @@tamagotchi.sleep_level()
  @activity_level = @@tamagotchi.play()
  erb(:status)
end
post("/to_bed") do
  @@life_time = @@tamagotchi.update_time()
  @food_level = @@tamagotchi.food_level()
  @sleep_level = @@tamagotchi.to_bed()
  @activity_level = @@tamagotchi.activity_level()
  erb(:status)
end
