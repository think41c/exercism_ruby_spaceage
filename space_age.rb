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
    @venus   =   0.61519726
    @mars    =   1.88081580
    @jupiter =  11.86261500
    @saturn  =  29.44749800
    @uranus  =  84.01684600
    @neptune = 164.79132000
  end

  def seconds_to_days
    @seconds / @sec_in_min / @mins_in_hour / @hours_in_day
  end

  def on_earth
    seconds_to_days / @earth
  end
end

