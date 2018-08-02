=begin
	
## Ejercicio 6: Objetos y archivos.
Se tiene un archivo llamado *catalogo.txt* que contiene los nombres de los productos que ofrece una tienda junto con los precios de las tallas *L, M, S y XS*.
El siguiente código define la clase *Product* y además realiza la lectura del archivo.
	
=end

class Product
	attr_reader :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end

print products_list
print data

#Se pide:

#Optimizar el código implementando el operador splat al momento de instanciar los productos

#Generar un método que permita calcular el promedio de precio por producto.
