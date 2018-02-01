class Punto
  attr_accessor :x, :y
  def initialize(punto_x, punto_y)
    @x = punto_x
    @y = punto_y
  end
end

posicion_x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
posicion_y = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

arreglo_puntos = []
10.times do
  arreglo_puntos << Punto.new(posicion_x.sample, posicion_y.sample)
end

arreglo_puntos.each {|instancia| puts "El punto se ubica en X = #{instancia.x}, Y = #{instancia.y}"}
