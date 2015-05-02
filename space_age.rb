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
    @earth   = 365.25000000
    @venus   =   0.61519726
    @mars    =   1.88081580
    @jupiter =  11.86261500
    @saturn  =  29.44749800
    @uranus  =  84.01684600
    @neptune = 164.79132000
  end

	def seconds
    @seconds   
	end
	
  def on_earth
    @seconds / 60 / 60 / 24 / @earth
  end



end

a = SpaceAge.new(1000000000)
a.on_earth