# 3.0 - Tipos de dato parte 1

Lo primero que debes saber sobre el sistema de tipos de Ruby es que todo es un objeto, así que todo
va a tener propiedades y métodos.

## Integer y Float

Abre la teminal, abre IRB, replica los comandos que ves a continuación y observa los resultados.

```(ruby)
# Integers y floats

# Operadores
x = 4 + 5 - 1
y = x * 20 / 5
z = 5%2
9%3
pi = 3.14
2 < 3
2 ** 8

# Métodos utilitarios
2.even?
x.odd?
(2 ** 8).digits
(2 ** 8).digits.reverse
2 ** 5000

# Inspeccionamos el tipo o la clase de las variables `x` y `pi` y sus métodos
x.class
pi.class

x.methods
pi.methods

x.class.ancestors
pi.class.ancestors
1.0.class
(1 + 3.14).class

4.is_a? Integer
4.is_a? Numeric
4.is_a? Float
```

Lo que aprendimos:

- Una variable se define usando la notación `<nombre de variable> = <valor de la variable>`
- Por convención, las variables y nombres de métodos van en minúscula y separados por guión bajo "_"
- Por convención, se usa un signo de interrogación `?` al final de métodos que retornen un booleano
  par denotar una pregunta
- Existen dos tipos de números de Ruby: `Integer` y `Float`. El primero es para números enteros y el
  segundo para decimales.
- Así como los String, los números también son tratados como objetos en Ruby
- Ruby, a diferencia de muchos otros lenguajes, es capaz de manejar números "muy grandes" como
  `2^5000` de la misma manera en la que maneja números "pequeños".
- El método `.ancestors` de la clase `Class`, nos permiter ver la cadena de herencia de un objeto
- El método `.is_a?` presente en todos los objetos, nos permite verificar si un objeto es de cierta
  clase
- Las clases `Integer` y `Float` comparten un ancestro en común llamado `Numeric`
- Una operación matemática que involucre un `Float` va a dar como resultado un `Float`

## Strings

Abre la teminal, abre IRB, replica los comandos que ves a continuación línea por línea y observa los
resultados.

```(ruby)
# Strings

# Definición de un string
string_1 = 'hola'
string_2 = "hola"
string_3 = %q(hola)
frase = "  Hola, soy Pepe Perez y tengo 42 años  "
edad = 35
frase = "  Hola, soy Pepe Perez y tengo #{edad} años  "
edad = 42
frase = "  Hola, soy Pepe Perez y tengo #{edad} años  "

# Métodos utilitarios de String
frase.length
frase.upcase
frase.downcase()
frase.swapcase
frase.include? "42"
frase.strip
frase.empty?
frase.gsub("Pepe", "Platzi")
frase.end_with? "años"
frase.strip.end_with? "años"
frase * 5
puts frase
frase.gsub!("Pepe", "Platzi")
puts frase

# Inspeccionamos el tipo o la clase de la variable `frase` y sus métodos
frase.class
frase.class.class
frase.methods

# Código ASCII
"a".ord
"b".ord
(("b".ord) + 1).chr
"A".ord
"@".ord
```

Lo que aprendimos:

- Un string se puede definir usando comillas dobles, sencillas o usando la notacioón especial `%q()`
- Podemos utilizar `#{}` dentro de un string para "interpolar" una variable, lo que quiere decir
  inyectar el valor de la variable en el string
- Por convención, se usa un signo de admiración `!` al final de métodos que modifiquen el estado o
  que puedan resultar en una excepción. Eso sí, el `!` por sí solo no hace nada. No quiere decir que
  si agregas un signo de admiración a un método ya existente, ese método va a modificar el estado.
  Esto depende completamente de la lógica que implementes en el método
- Los paréntesis son opcionales a la hora de llamar un método
- Todo en Ruby es un objeto y tiene una clase. Inclusive las clases son un objeto de tipo `Class`
- Puedes encontrar más sobre los diferentes métodos de la clase String en la [documentaición oficial
  de Ruby](https://ruby-doc.org/core-2.5.1/String.html)

## Symbols

Abre la teminal, abre IRB, replica los comandos que ves a continuación línea por línea y observa los
resultados.

```(ruby)
# Symbols

# Definición de un symbol
color = :rojo

# Strings VS Symbols
color.class
otro_color = "rojo"
color == otro_color
color == otro_color.to_sym

# Object id
color.object_id
:rojo.object_id
"rojo".object_id
"rojo".object_id

:rojo.methods
```

Lo que aprendimos:

- Los symbols no son strings
- Los symbols son parecidos a las constantes o a los enums
- Si dentro del mismo programa haces referencia múltiples veces a un symbol, no vas a hacer que el
  programa reserve nueva memoria por cada referencia al symbol. Ruby instancia una sola vez el
  symbol y todas las referencias apuntan al mismo objeto. A diferencia de los strings, para los
  cuales Ruby instancias un nuevo objeto cada vez que se crea un string así el string que se cree
  haga referencia a un texto previamente utilizado.

## Arrays

Otro componente básico de Ruby son los Arrays. Los arrays o arreglos en español son un objeto
especial de Ruby que sirve para almacenar múltiples objetos. Vamos a ver un ejemplo:

```(ruby)
# Arrays

# Declaración de un array
letras = ["q","w","e","r","t","y"]
letras.size

# Accediendo al contenido del arreglo
letras[0]
letras[1]
letras[3] = "X"
letras[100]
letras[-1]
letras[-2]
letras[-100]
letras[letras.size]
letras[letras.size - 1]
letras.methods

# Array#methods retorna un array!
letras.methods.class

# Métodos utilitarios
letras.sort
letras
letras.sort!
letras

letras.first
letras.last
letras.include? "x"
letras.include? "q"

["q","w","e","r","t","y"].count { |x| x == "q" }
[1, 2, 3, 4].map { |x| x ** 2 }
[1, 2, 3, 4].select { |x| x.even? }
[1, 2, 3, 4].select(&:even?)
[1, 2, 3, 4].any?(&:even?)
[1, 2, 3, 4].sum
[1, 2, 3, 4].min
[1, 2, 3, 4].max

[1, "dos", :tres, 4.5].map { |x| x.class }
[1, "dos", :tres, 4.5].select { |x| x.is_a? Numeric }

# Transformando un String en un Array y viceversa

"hola mundo".split("")
"hola mundo".split.map { |x| x.ord }
"hola mundo".split.map { |x| x.upcase }.join
```

Lo que aprendimos:

- Un arreglo se crea usando la notación `[]`
- Usando el operador `[]` podemos acceder al contenido del arreglo
- Podemos usar números negativos con el operador `[]` para acceder al contenido del arreglo contando
  desde el último elemento hasta el primer elemento
- Si intentamos acceder a una posición que no existe vamos a recibir un `nil`
- El método `sort` crea una copia ordenada del arreglo, y el método `sort!` modifica el arreglo
- Un arreglo puede contener objetos de diferente tipo
- La clase Array contiene varios métodos que reciben un bloque y que nos permiten hacer operaciones
  que requieren iterar sobre los elementos del arreglo

## Hashes

```(ruby)
# Hashes

capitales = {
  "Mexico" => "Ciudad de Mexico",
  "Colombia" => "Bogota",
  "Peru" => "Lima",
  "Chile" => "Santiago de Chile",
  "España" => "Madrid",
  "Argentina" => "Buenos aires",
  "Paises bajos" => "Amsterdam",
  "Estados Unidos" => "Washington"
}

capitales["Colombia"]
capitales["Argentina"]
capitales["Marte"] = "Elon"
capitales.size
capitales.empty?
capitales.has_value? "Washington"
capitales.invert
capitales.merge({"Alemania" => "Berlin", "Francia" => "Paris"})
capitales.map { |k,v| "La capital de #{k} es #{v}" }
capitales.transform_values { |v| v.downcase }
{}.class
{}.methods

# Creando un hash apartir de un array
[["pepito", 13], ["sutanito", 30], ["fulanito", 2]].to_h
```

Lo que aprendimos:

- Los hashes se declaran usando `{}` y `=>`
- Los hashes son una forma de relacionar una llave con un valor
- Se puede utilizar el operador `[]` para acceder a un "registro" y para agregar uno nuevo
- la clase `Hash` tiene metodos que reciben un bloque que permiten operar sobre los "registros" que
  hay en el hash
- Se puede crar un hash apartir de un arreglo de parejas
