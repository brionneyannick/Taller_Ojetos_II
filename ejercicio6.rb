class Student
    attr_accessor :name, :mark
    def initialize(nombre, nota)
        @name = nombre
        @mark = nota
    end

end
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

cont = 0
objetos_de_student = nombres.map {|nombres| cont += 1 ;Student.new(nombres, cont)}
notas_de_todos = objetos_de_student.map {|objetos| objetos.mark}

print notas_de_todos
