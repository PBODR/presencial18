# Ejercicio 2: Objetos y archivos.
# El archivo cursos.txt contiene las fechas de inicio y término de cursos dictados
# por Desafío Latam durante el año 2017, con la siguiente estructura:
#
# Front-end, 2017-05-21, 2017-08-10
# Wordpress, 2017-04-12, 2017-11-04
# Full-stack, 2017-07-09, 2017-12-29
# Android, 2017-05-17, 2017-08-13
# Marketing, 2017-03-14, 2017-10-20
# Se pide:
#
# Crear una clase Course cuyo constructor reciba el nombre del curso y las
# fechas de inicio y término.
# class Course
#   attr_accessor :nombrecurso, :fechainicio, :fechatermino
#   def initialize(nombrecurso, fechainicio, fechatermino)
#     @nombrecurso = nombrecurso
#     @fechainicio = fechainicio
#     @fechatermino = fechatermino
#   end
class Course
  attr_accessor :course, :fechainicio, :fechatermino
  def initialize (course, fechainicio, fechatermino)
    @course = course
    @fechainicio = fechainicio
    @fechatermino = fechatermino
  end
end
# Crear un método que permita leer el archivo y crear una instancia de la clase
# Course por línea del archivo.
curso1 = []
# curso2 = []
# curso3 = []
# curso4 = []
# curso5 = []
data = []
File.open('cursos.txt', 'r') { |file| data = file.readlines}
data.each do |line|
  ls = line.split(', ')
  curso1 << Course.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end
#   curso2 << Course.new(ls[1])
#   curso3 << Course.new(ls[2])
#   curso4 << Course.new(ls[3])
#   curso5 << Course.new(ls[4])
# end

# Crear métodos que permitan:
#
# Saber qué cursos comienzan previo a una fecha entregada como argumento.
#
# Saber qué cursos finalizan posterior a una fecha entregada como argumento.
#
# En ambos el métodos argumento por defecto debe ser la fecha de hoy.
#
# Ambos métodos deben levantar una excepción si la fecha recibida es >= 2019-01-01.
