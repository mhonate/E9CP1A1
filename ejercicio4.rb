#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:

#propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
#Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"

class Dog
	attr_accessor :nombre, :raza, :color
	
	def initialize (nombre, raza, color)
		@nombre = nombre
		@raza = raza
		@color = color
	end

	def ladrar
		"#{@nombre} está ladrando!"
	end
	
end

perro1 = Dog.new("Beethoven", "San Bernardo", "Cafè")
puts perro1.ladrar

#RESUELTO

#Ejercicio de mauricio:
#No utilizó accessor

class Dog
  def initialize(propiedades)
    @propiedades = propiedades
  end

  def ladrar
    puts "#{@propiedades[:nombre]} está ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
perro.ladrar

=begin
	

# Ejercicio 4: Constructor con argumentos.

Crea una clase llamada *Dog* cuyo constructor reciba como 
argumento un *hash* con la siguiente estructura:

~~~ruby
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
~~~

Instanciar un nuevo perro a partir de las propiedades 
contenidas en el *hash*. Luego generar un método llamado **ladrar** que, 
mediante interpolación, imprima *"Beethoven está ladrando!"*	
=end