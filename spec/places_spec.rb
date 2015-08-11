require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

  describe("#destination") do
    it("lets you give a destination") do
      test_task = Places.new("Gresham")
      expect(test_task.destination()).to(eq("Gresham"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Places.new("McMinnville")
      test_task.save()
      expect(Places.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved destinations") do
      Places.new("Beavertron").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end


end
