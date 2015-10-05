class AreasController < ApplicationController
  def square
    @a = params[:length_of_side].to_f
    @area = @a**2
  end

  def circle
    @pi = 3.1416 # Close enough.
    @r = params[:radius].to_f
    @area = @pi * (@r**2)
  end

  def triangle
    @b = params[:base].to_f
    @h = params[:vertical_height].to_f
    @area = 0.5 * @b * @h
  end

  def rectangle
    @w = params[:horizontal_width].to_f
    @h = params[:vertical_height].to_f
    @area = @w * @h
  end

  def trapezoid
    @a = params[:length_of_side].to_f
    @w = params[:horizontal_width].to_f
    @h = params[:vertical_height].to_f
    @area = 0.5 * (@a + @w) * @h
  end

  def ellipse
    @pi = 3.1416 # Close enough.
    @w = params[:horizontal_width].to_f
    @h = params[:vertical_height].to_f
    @area = @pi * @w * @h
  end

  def random
    @pi = 3.1416
    @radii = [rand(1..20), rand(5..10), rand(10..15), rand(15..20), rand(20..25)]
    @area = @pi * @radii[0]
  end
end
