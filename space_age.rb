class SpaceAge

  def initialize(seconds)
    @seconds = seconds
    yearly_orbit_in_days
  end

  def yearly_orbit_in_days
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