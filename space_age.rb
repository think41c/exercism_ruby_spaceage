class SpaceAge

  attr_reader :seconds

  def initialize(seconds)
    @seconds      = seconds
    @hours_in_day = 24
    @mins_in_hour = 60
    @sec_in_min   = 60 
    yearly_orbit_in_days
  end

  def yearly_orbit_in_days
    @earth   = 365.25000000
    @venus   =   0.61519726 * @earth
    @mars    =   1.88081580 * @earth
    @jupiter =  11.86261500 * @earth
    @saturn  =  29.44749800 * @earth
    @uranus  =  84.01684600 * @earth
    @neptune = 164.79132000 * @earth
    @mercury =   0.24084670 * @earth
  end

  def seconds_to_days
    @seconds / @sec_in_min / @mins_in_hour / @hours_in_day
  end

  def on_mercury 
    seconds_to_days / @mercury
    #280.88 

  end

  def on_earth
    seconds_to_days / @earth
  end
end

a = SpaceAge.new(2_134_835_688)
puts a.on_earth
puts a.on_mercury