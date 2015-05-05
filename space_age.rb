class SpaceAge

  attr_reader :seconds

  def initialize(seconds)
    @seconds      = seconds
    @hours_in_day = 24
    @mins_in_hour = 60
    @sec_in_min   = 60 
    yearly_orbit_in_days
  end

  def seconds_to_days
    @seconds / @sec_in_min / @mins_in_hour / @hours_in_day
  end

  def yearly_orbit_in_days
    @EARTH   = 365.25000000
    @VENUS   =   0.61519726 * @EARTH
    @MARS    =   1.88081580 * @EARTH
    @JUPITER =  11.86261500 * @EARTH
    @SATURN  =  29.44749800 * @EARTH
    @URANUS  =  84.01684600 * @EARTH
    @NEPTUNE = 164.79132000 * @EARTH
    @MERCURY =   0.24084670 * @EARTH
  end

  def on_mercury 
    seconds_to_days / @MERCURY
  end

  def on_earth
    seconds_to_days / @EARTH
  end

  def on_venus
    seconds_to_days / @VENUS
  end

  def on_mars 
    seconds_to_days / @MARS
  end

  def on_jupiter
    seconds_to_days / @JUPITER
  end

  def on_saturn
    seconds_to_days / @SATURN
  end

  def on_uranus
    seconds_to_days / @URANUS
  end

  def on_neptune
    seconds_to_days / @NEPTUNE
  end

end
