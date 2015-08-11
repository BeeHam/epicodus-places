require('rspec')
require('places')

describe(Places) do
  # before() do
  #   Places.clear()
  # end

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


end
