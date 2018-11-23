# 3.2 - Clases, Modulos y objetos

## Todo es un objeto

Como ya lo habrás notado, todo en Ruby es un objeto. Esto puede ser confirmado pues cualquier cosa que hagas en Ruby va a tener, por lo menos un método `.class` que te va a retornar la clase de esa cosa u objeto. El hecho de que todo sea un objeto, incluyendo los tipos de dato más básicos significa que no tienes que tratar a ningún tipo de manera especial, puedes ir a irb y usar `.class` y `.methods` para empezar a entender lo que puedes hacer con algún objeto en específico.

## Clases y métodos

Para definir una clase en Ruby se utiliza la palabra reservada `class` seguido del nombre de la clase. Para terminar la definición de una clase (y en general de un bloque) se utiliza la palabra reservada `end`. Dentro del bloque de la clase se definen los métodos de instancia usando `def` y los métodos de clase usando `def self.`.

```(ruby)
class Persona

  def initializer(nombre)
    @nombre = nombre
  end

  def nombre=(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def self.sugerencias_de_nombre
    ["Pepe", "Pepito", "Sutano", "Sutanito"]
  end
end

Persona.sugerencias_de_nombre
matz = Persona.new("Matz")
matz.nombre
matz.nombre = "Matzumoto"
matz.nombre

# con attr_accessor

class Mascota
  attr_accessor :nombre, :edad
  def initializer(nombre, edad)
    @nombre = nombre
    @edad = edad
  end

  def self.sugerencias_de_nombre
    ["Pepe", "Pepito", "Sutano", "Sutanito"]
  end
end

Mascota.methods - Class.methods
Mascota.new.methods
Mascota.new.methods - Object.new.methods
Mascota.sugerencias_de_nombre
milo = Mascota.new("Milo", 3)
milo.nombre
milo.edad = 14
milo.edad

# con Struct
Empleado = Struct.new(:nombre, :edad) do
  def self.sugerencias_de_nombre
    ["Pepe", "Pepito", "Sutano", "Sutanito"]
  end
end

Empleado.methods
Empleado.new.methods
Empleado.new.methods - Object.new.methods
pepe = Empleado.new
```

Lo que aprendimos:

- El método `initializer` es el equivalente al constructor en otros lenguajes. Se usa para inicializar un objeto.
- Los métodos de clase se definen usando `def self.<nombre del método>`
- `Struct` es una clase especial de Ruby que nos permite crear rápidamente otras clases con attributos.
- Los métodos de instancia se definen con `def <nombre del método>`y se puede usar `=` dentro de su nombre. Realmente cualquier método puede usar `=` en su nombre, pero por convención se utiliza para "setters".
- Se pueden definir atributos de instancia usando `@` o el macro `attr_accessor` que adicionalmente crea "getters" y "setters"
- Aparte del macro `attr_accessor` se puede usar los macros `attr_reader` y `attr_writer` para definir únicamente "getters" o "setters" respectivamente.
- Se pueden definir atributos de clase usando `@@`
- Todas las expresiones en Ruby retornan un valor. Si dentro de un bloque no se usa un `return` explícitamente, se retorna el resultado de la última expresión evaluada.

## Modulos

Una buena práctica de programación es modularizar nuestro código, lo que algunos llaman "alta cohesión", lo que quiere decir que cada componente de nuestro código debe tener una responsabilidad bien definida. Una forma de agrupar componentes es usando Modulos.

Por ejemplo en Ruby on Rails, cada componente está encapsulado en un módulo.

```
Module Model
  class Company
  end
  class Employee
  end
end

Module Reports
  class ExcelReporter
    def build
      puts "Generating excel report"
    end
  end

  class EmailReporter
  end
end

excel_report = Reports::ExcelReporter.new
excel_report.build
```