class Dog
  attr_reader :nombre, :razas, :colores
  def initialize(datos_hash)
    @nombre = datos_hash[:nombre]
    @razas = datos_hash[:raza]
    @colores = datos_hash[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

perro = Dog.new({nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'})
perro.ladrar
