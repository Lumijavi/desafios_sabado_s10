module Formula
  def perimetro(a,b)
    2*(a+b)
  end

  def area(a,b)
    a*b
  end
end


class Rectangulo
  include Formula
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo.to_i
    @ancho = ancho.to_i
  end

  def lados
    print "#{largo}, #{ancho}"
  end

end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "#{lado}"
  end
end

rect = Rectangulo.new(3,5)
cuad = Cuadrado.new(3)

puts "El perimetro del rectangulo es #{rect.perimetro(rect.largo,rect.ancho)} y el area es #{rect.area(rect.largo,rect.ancho)}"

puts "El perimetro del cuadrado es #{cuad.perimetro(cuad.lado,cuad.lado)} y el area es #{cuad.area(cuad.lado,cuad.lado)}"
