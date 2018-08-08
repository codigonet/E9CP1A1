# Se tiene la clase Morseable que contiene un método de instancia
# generate_hash los datos de traducción de número entero a código morse.
# Se pide:
# Refactorizar el código del método de instancia
# generate_hash para que los datos estén contenidos en un hash
# donde los números serán las claves y la traducción los valores.
# El método generate_hash además debe retornar la traducción del número
# recibido como argumento.

class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    return nil if number < 0 || number > 9
    h = { number => "#{'.' * number}#{'-' * (5 - number)}" } if number <= 5
    h = { number => "#{'-' * (number - 5)}#{'.' * (10 - number)}" } unless number <= 5
    h
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print "A: #{m.to_morse}\n"

print 'B: '
print m.generate_hash 5
