   # - Earth: orbital period 365.25 Earth days, or 31557600 seconds
   # - Mercury: orbital period 0.2408467 Earth years
   # - Venus: orbital period 0.61519726 Earth years
   # - Mars: orbital period 1.8808158 Earth years
   # - Jupiter: orbital period 11.862615 Earth years
   # - Saturn: orbital period 29.447498 Earth years
   # - Uranus: orbital period 84.016846 Earth years
   # - Neptune: orbital period 164.79132 Earth years

class SpaceAge

  def initialize(seconds)
    @seconds = seconds
  end

	def seconds
    @seconds   
	end
	
  def on_earth
    seconds_in_a_year = 365.25 * 24 * 60 * 60
    puts seconds_in_a_year*31
  end

end

a = SpaceAge.new(2)
a.on_earth