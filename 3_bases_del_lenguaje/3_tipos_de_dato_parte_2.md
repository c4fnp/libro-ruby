# 3.3 - Tipos de dato parte 2

## Rangos

```(ruby)
# Range
(1..5).class
("a".."f").methods
(1..5).map { |x| x + 1 }

# 2.. VS 3...
(1..5).to_a
(1...5).to_a
```

Lo que aprendimos:

- Los rangos tienen metodos similares a los de la clase `Array`
- Se pueden crear rangos de caracteres
- Se puede convertir un Range a un Array usando `.to_a`

## Regex

Sobre regex se puede escribir un libro entero, así que simplemente vamos a ver cómo usarlos en Ruby y te queda como ejercicio investigar más sobre el tema si te interesa profundizar. Puedes iniciar con [Rubular](http://rubular.com/) que es un sitio web en el que puedes probar expresiones regulares en Ruby.

```(ruby)
# Regex
is_gmail_regex = /\w+@gmail.com/
"simon@gmail.com".match /\w+@gmail.com/
"simon@gmail.com".match? /\w+@gmail.com/
"simon@gmail.com" =~ /\w+@gmail.com/

# Multiples matches
number_regex = /\d+/
"calle falsa 123 - 192".scan number_regex
```

Lo que aprendimos:

- Los Regex se declaran entre `//`
- Se puede usar los métodos `match` y `match?` de String para probar sin un regex hace match con un string
- Se puede usar el operador especial `=~`
- Se puede usar el método scan para detectar múltiples matches

## Procs y Lambdas

Los Procs y Lambdas son objetos especiales en Ruby que representan una función que puede ser referenciada por una variable. Es muy util para hacer programación funcional y en general para interfaces muy amigables. Como ya lo habrás notado, los lambdas son muy usados en la clase Array y Hash por ejemplo en métodos como map, select, any, etc.

```(ruby)
# Procs y Lambdas

saludar = Proc.new { |nombre| puts "Hola #{nombre}" }
saludar.call("Simon")
```
