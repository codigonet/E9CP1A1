# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash
# con la siguiente estructura:

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_reader :name

  def initialize(dogy)
    @dogy = dogy
    @name = @dogy[:nombre]
  end

  def ladrar
    "#{@name}: está ladrando...\n"
  end
end

d = Dog.new propiedades
e = nil
print d.ladrar if d.is_a?Dog
print e.ladrar if e.is_a?Dog
