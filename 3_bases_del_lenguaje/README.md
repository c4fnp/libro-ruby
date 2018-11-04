# 2 - Bases del lenguaje

Lo primero que debes saber sobre el sistema de tipos de Ruby es que todo es un objeto, así que todo
va a tener propiedades y métodos.

> **Convenciones:**
>
> En los siguientes ejercicios vas a ver algunas secciones de código en las cuales uso las
> siguientes convenciones:
> - `$`: Comando ejecutado en la terminal
> - `>`: Resultado de un comando ejecutado en la terminal
> - `#`: Comentario
> - `irb>`: Comando ejecutado en IRB (Interactive Ruby Shell)
> - `=>` : Resultado de un comando ejecutado en IRB

## Strings

Abre la teminal, abre IRB, replica los comandos que ves a continuación y observa los resultados.

```
$ irb
# Definición de la variable `nombre` de tipo String
irb> nombre = "  Hola, soy Pepe Perez y tengo 42 años  "
  => "  Hola, soy Pepe Perez y tengo 42 años  "

# Algunos métodos utilitarios de String
irb> nombre.length
  => 40
irb> nombre.upcase
  => "  HOLA, SOY PEPE PEREZ Y TENGO 42 AÑOS  "
irb> nombre.downcase()
  => "  hola, soy pepe perez y tengo 42 años  "
irb> nombre.swapcase
  => "  hOLA, SOY pEPE pEREZ Y TENGO 42 AÑOS  "
irb> nombre.include? "42"
  => true
irb> nombre.strip
  => "Hola, soy Pepe Perez y tengo 42 años"
irb> nombre.empty?
  => false
irb> nombre.gsub("Pepe", "Platzi")
  => "  Hola, soy Platzi Perez y tengo 42 años  "
irb> nombre.end_with? "años"
  => false
irb> nombre.strip.end_with? "años"
  => true
irb> nombre * 5
  => "  Hola, soy Pepe Perez y tengo 42 años    Hola, soy Pepe Perez y tengo 42 años    Hola, soy Pepe Perez y tengo 42 años    Hola, soy Pepe Perez y tengo 42 años    Hola, soy Pepe Perez y tengo 42 años  "

# Ha sido modificada la variable `nombre`?
irb> puts nombre
  Hola, soy Pepe Perez y tengo 42 años
  => nil
# la variable `nombre` no ha sido modificada. Prueba el método `gsub!` (incluyendo el signo de admiración)
irb> nombre.gsub!("Pepe", "Platzi")
  => "  Hola, soy Platzi Perez y tengo 42 años  "
# y ahora, vuelve a imprimir la variable
irb> puts nombre
  Hola, soy Platzi Perez y tengo 42 años
  => nil
# Esta vez, la variable sí fue modificada

# Inspeccionamos el tipo o la clase de la variable `nombre` y sus métodos
irb> nombre.class
  => String
irb> nombre.class.class
  => Class
irb> nombre.methods
  => [:include?, :%, :*, :+, :to_c, :unicode_normalize, :unicode_normalize!, :unicode_normalized?, :count, :partition, :unpack, :unpack1, :sum, :next, :casecmp, :casecmp?, :insert, :bytesize, :match, :match?, :succ!, :+@, :-@, :index, :rindex, :<=>, :replace, :clear, :upto, :getbyte, :==, :===, :setbyte, :=~, :scrub, :[], :[]=, :chr, :scrub!, :dump, :byteslice, :upcase, :next!, :empty?, :eql?, :downcase, :capitalize, :swapcase, :upcase!, :downcase!, :capitalize!, :swapcase!, :hex, :oct, :split, :lines, :reverse, :chars, :codepoints, :prepend, :bytes, :concat, :<<, :freeze, :inspect, :intern, :end_with?, :crypt, :ljust, :reverse!, :chop, :scan, :gsub, :ord, :start_with?, :length, :size, :rstrip, :succ, :center, :sub, :chomp!, :sub!, :chomp, :rjust, :lstrip!, :gsub!, :chop!, :strip, :to_str, :to_sym, :rstrip!, :tr, :tr_s, :delete, :to_s, :to_i, :tr_s!, :delete!, :squeeze!, :each_line, :squeeze, :strip!, :each_codepoint, :lstrip, :slice!, :rpartition, :each_byte, :each_char, :to_f, :slice, :ascii_only?, :encoding, :force_encoding, :b, :valid_encoding?, :tr!, :encode, :encode!, :hash, :to_r, :<, :>, :<=, :>=, :between?, :clamp, :instance_of?, :kind_of?, :is_a?, :tap, :public_send, :method, :public_method, :singleton_method, :remove_instance_variable, :define_singleton_method, :instance_variable_set, :extend, :to_enum, :enum_for, :!~, :respond_to?, :object_id, :send, :display, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variable_get, :instance_variables, :instance_variable_defined?, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
```

Algunas cosas a tener en cuenta:

- Por convención, las variables y nombres de métodos van en minúscula y separados por guión bajo "_"
- Por convención, se usa un signo de interrogación `?` al final de métodos que retornen un booleano par denotar una pregunta
- Por convención, se usa un signo de admiración `!` al final de métodos que modifiquen el estado o que puedan resultar en una excepición. Eso sí, el `!` por sí solo no hace nada. No quiere decir que si agregas un signo de admiración a un método ya existente, ese método va a modificar el estado. Esto depende completamente de la persona que implementa el método.
- Los paréntesis son opcionales a la hora de llamar un método
- Todo en Ruby es un objeto y tiene una clase. Inclusive las clases son un objeto de tipo `Class`
- Puedes encontrar más sobre los diferentes métodos de la clase String en la [documentaición oficial de Ruby](https://ruby-doc.org/core-2.5.1/String.html)

## Integer y Float

Abre la teminal, abre IRB, replica los comandos que ves a continuación y observa los resultados.

```(ruby)
x = 4 + 5
# 9
y = x * 20 / 5
# 36
2.even?
# true
3.odd?
# true
2 < 3
# true
2 ** 8
# 256
2 ** 5000
# 141246703213942603683520966701614733366889617518454111681368808585711816984270751255808912631671152637335603208431366082764203838069979338335971185726639923431051777851865399011877999645131707069373498212631323752553111215372844035950900535954860733418453405575566736801565587405464699640499050849699472357900905617571376618228216434213181520991556677126498651782204174061830939239176861341383294018240225838692725596147005144243281075275629495339093813198966735633606329691023842454125835888656873133981287240980008838073668221804264432910894030789020219440578198488267339768238872279902157420307247570510423845868872596735891805818727796435753018518086641356012851302546726823009250218328018251907340245449863183265637987862198511046362985461949587281119139907228004385942880953958816554567625296086916885774828934449941362416588675326940332561103664556982622206834474219811081872404929503481991376740379825998791411879802717583885498575115299471743469241117070230398103378615232793710290992656444842895511830355733152020804157920090041811951880456705515468349446182731742327685989277607620709525878318766488368348965015474997864119765441433356928012344111765735336393557879214937004347568208665958717764059293592887514292843557047089164876483116615691886203812997555690171892169733755224469032475078797830901321579940127337210694377283439922280274060798234786740434893458120198341101033812506720046609891160700284002100980452964039788704335302619337597862052192280371481132164147186514169090917191909376
pi = 3.14
# 3.14
pi.class

pi.class
# Float

```

Vamos a descomponer esta expresión para entender qué fue lo que pasó:

1. `[6, 5.4, "Texto", {}, [], :simbolo, ]`: La primera parte es un arreglo compuesto por 6 objetos
   de tipos diferentes que a su vez son los tipos más básicos de Ruby. El primer objeto es el entero
   `6`, el segundo es el decimal `5.4`, el tercero es el string `"Texto"`, el cuarto es un hash
   vacío, el quinto es un arreglo vacío y el último es un símbolo. Más adelante vamos a hablar en
   detalle sobre los hashes y símbolos, por el momento concentrémonos en enteder la expresión.

2. `.each { }`: La segunda parte es una invocación al método `each` del objeto `Array`.








## Variables y tipos de dato



En Ruby, los principales tipos de dato son:

- `String`
- `Float`
- `Integer`
- `Boolean` (aunque no hay una clase Boolean)
- `Symbol`
- `Array`
- `Proc`
- `Class`
- `Module`
- `Object`


  Math, Float e Integer (anteriormente Fixnum y Bignum) Strings Interpolación Arrays Funciones de
  array Hash Funciones de hash Symbol Procs/Lambdas Funciones Keyword arguments Excepciones

## Todo es un objeto (10 min)

  POO Atributos y métodos de instancia Atributos y métodos de clase Herencia Extendiendo
  objetos/clases con módulos e includes Struct Redefiniendo clases

## Bundler y Gemas (5 min)
  
  Bundler Gemas Rubygems Bundle init Gemfile

## Multithreading y paralelismo en Ruby (10 min)

  Threads VS Procesos Global Interpreter Lock Eventos, eventmachine Benchmarking Jruby vs cruby

## Testing (7 min)

  Alternativas Minitest Rspec Cucumber TDD BDD

## Diferentes versiones (5 min)

  Cosas nuevas en ruby 2.5 Qué esperar de Ruby 3
