require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket = Rocket.new({ name: "coolRocket",
                          colour: "red",
                          flying: true })
  end

  def test_initialize_method_without_providing_options_hash
  end

  def test_initialize_method_by_providing_options_hash
  end

  def test_name_getter_method
    result = @rocket.name
    expected = "coolRocket"
    assert_equal(expected, result)
  end

  def test_name_setter_method
    @rocket.name = "testSetter"
    result = @rocket.name
    expected = "testSetter"
    assert_equal(expected, result)
  end

  def test_colour_getter_method
    result = @rocket.colour
    expected = "red"
    assert_equal(expected, result)
  end

  def test_colour_setter_method
    @rocket.colour = "indigo"
    result = @rocket.colour
    expected = "indigo"
    assert_equal(expected, result)
  end

  def test_flying_getter_method
    result = @rocket.flying?
    expected = true
    assert_equal(expected, result)
  end

  def test_lift_off_method_when_rocket_is_flying
    result = @rocket.lift_off
    expected = false
    assert_equal(expected, result)
  end

  def test_lift_off_method_when_rocket_is_on_land
    @rocket = Rocket.new( { name: "coolRocket" , colour: "red" , flying: false } )
    result = @rocket.lift_off
    expected = true
    assert_equal(expected, result)
  end

  def test_land_method_when_rocket_is_flying
    result = @rocket.land
    expected = true
    assert_equal(expected, result)
  end

  def test_land_method_when_rocket_is_on_land
    @rocket = Rocket.new( { name: "coolRocket" , colour: "red" , flying: false } )
    result = @rocket.land
    expected = false
    assert_equal(expected, result)
  end

  def test_status_method_when_rocket_is_flying
  end

  def test_status_method_when_rocket_is_on_land
  end

end
