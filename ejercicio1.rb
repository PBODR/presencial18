# Ejercicio 1: Objetos y archivos.
# El archivo casino.txt contiene las recaudaciones de 4 días de un casino separadas por mesa de juego.
#
# Mesa 1, 90, 60, 10, 30
# Mesa 2, 40, 34, 77, 11
# Mesa 3, 34, 86, 55, 91
# Mesa 4, 67, 93, 43, 87
# Se pide:
#
# Crear una clase Table cuyo constructor reciba el nombre de la mesa y las recaudaciones correspondientes de cada día.
#OK
# Hint: El constructor debe recibir 5 argumentos. Uno para el nombre de la mesa y los demás para cada recaudación
# correspondiente a esa mesa. OK
#
# Crear un método que permita leer el archivo e instanciar un objeto de la clase Table
# por cada línea del archivo.
#OK
# Crear métodos que permitan:
#
# Conocer el mayor valor recaudado, por mesa, y el nombre de la mesa y día corresponde
#(día 1, día 2, día 3 o día 4).
#
# Calcular el promedio total de lo recaudado por todas las mesas en todos los días.

# class Table
#   attr_accesor = :mesa, :rec1, :rec2, :rec3, :rec4
#   def initialize (mesa, rec1, rec2, rec3, rec4)
#     @mesa = mesa
#     @rec1 = rec1.to_i
#     @rec2 = rec2.to_i
#     @rec3 = rec3.to_i
#     @rec4 = rec4.to_i
#   end
# end

class Table
  attr_accessor :mesa, :recaudacion
  def initialize(mesa, *recaudacion)
    @mesa = mesa
    @recaudacion = recaudacion.map(&:to_f)
  end
  def average
    @recaudacion.inject(&:+)/@recaudacion.size
  end
  def maximo
    @recaudacion.max
  end
end
#esto funciona
todaslasmesas = []
data = []
File.open('casino.txt', 'r') { |file| data = file.readlines}
data.each do |line|
  ls = line.split(', ')
  todaslasmesas << Table.new(*ls)
end
promedios = todaslasmesas.map(&:average)
promedio_final = promedios.inject(&:+)/promedios.size
puts "El promedio del total es #{promedio_final}"


# maximo = todaslasmesas(&:max)
# puts maximo
