class MyPet
    attr_writer :die
  def initialize(name)
    @name = name
    @sleep = false
    @satisfied = 10
    @fullIntestine = 0
    @die = false
    puts @name + ' nace'
  end

    def comer
      puts "#{@name} está comiendo."
      @sleep = false
      @satisfied += 8
      timeLapse
    end

    def dormir
      puts "#{@name} está durmiendo zZz."
      @satisfied -= 2
      @fullIntestine += 2
      @sleep = true
      timeLapse
    end

    def caminar
      puts "#{@name} está caminando."
      @sleep = false
      @satisfied -= 2
      @fullIntestine  += 2
      timeLapse
    end

    def ir_al_bano
      puts "#{@name} fue al baño."
      @sleep = false
      @fullIntestine = 0
      @satisfied -= 4
      timeLapse
    end

    def hungry?
      @satisfied <= 2 ? true : false
    end

    def needToGo?
      @fullIntestine >= 8 ? true : false
    end

    def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del estomago al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit #  Sale del programa.
    end
    if @fullIntestine  >= 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end
    if hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end
    if needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
end

mascota = MyPet.new('Nikita')

until @die
  puts 'Que deseas hacer?
  1)Alimentar
  2)Hacerla dormir
  3)Salir a Caminar
  4)Llevar al Baño'
  opcion = gets.chomp.to_i

  case opcion
    when 1
      mascota.comer

    when 2
      mascota.dormir

    when 3
      mascota.caminar

    when 4
      mascota.ir_al_bano

    else
      puts 'Opción incorrecta, intenta de nuevo!!!'
      mascota.timeLapse
  end
end
