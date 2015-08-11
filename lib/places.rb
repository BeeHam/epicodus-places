class Places
  @@all_places = []

  define_method(:initialize) do |destination|
    @destination = destination
  end

  define_method(:destination) do
    @destination
  end
end
