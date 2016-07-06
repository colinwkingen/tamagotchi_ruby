require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new tamagotchi") do
      my_pet = Tamagotchi.new("barry")
      expect(my_pet.name()).to(eq("barry"))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end
  describe("#is_alive") do
    it("tells you if tamagotchi is alive") do
      my_pet = Tamagotchi.new("barry")
      expect(my_pet.is_alive()).to(eq(true))
      my_pet.change_attr(0,0,0)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end
  describe("#is_tired") do
    it("tells you if tamagotchi is tired") do
      my_pet = Tamagotchi.new("barry")
      my_pet.change_attr(10,10,10)
      expect(my_pet.is_tired()).to(eq(false))
      my_pet.change_attr(10,3,10)
      expect(my_pet.is_tired()).to(eq(true))
    end
  end
  describe("#is_hungry") do
    it("tells you if tamagotchi is hungry") do
      my_pet = Tamagotchi.new("barry")
      my_pet.change_attr(10,10,10)
      expect(my_pet.is_hungry()).to(eq(false))
      my_pet.change_attr(3,10,10)
      expect(my_pet.is_hungry()).to(eq(true))
    end
  end
  describe("#is_bored") do
    it("tells you if your tamagotchi is bored") do
      my_pet = Tamagotchi.new("barry")
      my_pet.change_attr(10,10,10)
      expect(my_pet.is_bored()).to(eq(false))
      my_pet.change_attr(3,10,3)
      expect(my_pet.is_bored()).to(eq(true))
    end
  end
  describe("#feed") do
    it("allows you to feed your tamagotchi") do
      my_pet = Tamagotchi.new("barry")
      my_pet.change_attr(5,10,10)
      my_pet.feed()
      expect(my_pet.food_level()).to(eq(8))
    end
  end
  describe("#to_bed") do
    it("allows your tamagotchi to sleep") do
      my_pet = Tamagotchi.new("barry")
      my_pet.change_attr(10,4,10)
      my_pet.to_bed()
      expect(my_pet.sleep_level()).to(eq(8))
    end
  end
  describe("#play") do
    it("allows your tamagotchi to play") do
      my_pet = Tamagotchi.new("barry")
      my_pet.change_attr(10,10,4)
      my_pet.play()
      expect(my_pet.activity_level()).to(eq(6))
    end
  end
end
