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
    @earth   = 365.25000000
    @venus   =   0.61519726 * @earth
    @mars    =   1.88081580 * @earth
    @jupiter =  11.86261500 * @earth
    @saturn  =  29.44749800 * @earth
    @uranus  =  84.01684600 * @earth
    @neptune = 164.79132000 * @earth
    @mercury =   0.24084670 * @earth
  end

  def on_mercury 
    seconds_to_days / @mercury
  end

  def on_earth
    seconds_to_days / @earth
  end

  def on_venus
    seconds_to_days / @venus
  end

  def on_mars 
    seconds_to_days / @mars
  end

  def on_jupiter
    seconds_to_days / @jupiter
  end

  def on_saturn
    seconds_to_days / @saturn
  end

  def on_uranus
    seconds_to_days / @uranus
  end

  def on_neptune
    seconds_to_days / @neptune
  end

end
