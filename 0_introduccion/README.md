# 0 - Introducción

## Qué es Ruby?

Ruby es un lenguaje de programación dinámico, interpretado, con una grandes facilidades para hacer
metaprogramación y orientado a objetos aunque tambieén puede ser fácilmente usado para hacer
programacioón funcional o imperativa.

Fue creado por el japonés Yukihiro Matsumoto inspirado en en Perl y SmallTalk entre otros con los
principales objetivos de crear un lenguaje expresivo y que maximizara la felicidad del programador.
Aunque la primera versión fue publicada en 1993, sólamente se popularizó después del 2005 cuando
comenzó a ser usado para desarrollar aplicaciones web gracias al framework de desarrollo web Ruby on
Rails. Desde entonces la cantidad de desarrolladores usando Ruby a incrementado a pasos agigantados
año a año convirtiendolo en uno de los lenguajes de programación más populares de la historia
reciente.

Cuando escribes Ruby algunas veces vas a encontrar que puede llegar a parecerse al inglés, por
ejemplo:

A diferencia de otros lenguajes en donde debes escribir primero el condicional y después la acción,
en Ruby puedes escribirlo al revés si consideras que de esta manera el código va a ser más legible.

```(ruby)
puts "Hello" if 4.is_a? Integer
```

La expresividad de Ruby depende casi que por completo de sus creadores y de los desarrolladores de
librerías o gemas. La comunidad de desarrolladores de Ruby intenta usar nombres de métodos que sean
expresivos y así hacer que el código sea muy cercano al inglés como lo puedes en estos ejemplos.

```(ruby)
"Ruby\nBook".each_line(&:downcase)
[1,2,3,4].find_all(&:even?)
```

## Ventajas y desventajas de Ruby

Como buen programador debes conocer las ventajas y las desventajas de las herramientas que usas.

### Ventajas

- Al ser un lenguaje dinámico, interpretado y con una amplia librería estándar, Ruby es útil para
  hacer scripts. Ejemplo:

  <!-- TODO: ejemplo de script -->

  ```(ruby)
  ```

- La gran cantidad de gemas desarrolladas por la comunidad hace que sea muy fácil crear programas
  complejos con muy poco esfuerzo reusando código escrito por otros programadores.

- Debido a Ruby on Rails, Ruby es muy popular en el mundo del desarrollo web, así que vas a
  encontrar muy fácilmente gemas e información relacionada a Ruby y el mundo de las aplicaciones
  web.

- Ruby es particularmente bueno para crear DSLs (domain specific languages) o en español "Lenguajes
  de dominio específico", que en otras palabras son mini lenguajes de programación. Por ejemplo,
  puedes crear tu propio mini lenguaje especializado para configuración de servidores, pruebas,
  automatización, etc. Más adelante vamos a ver algunos ejemplos de esto.

- Para usar Ruby puedes escoger entre varios interpretes dependiendo de tu necesidad. MRI es el más
  popular, sin embargo puedes usar mruby para crear programas muy ligeros que pueden ser ejecutados
  en dispositivos con muy pocos recursos, o puedes inclusive usar Ruby para hacer scripting dentro
  de otras plataformas, o usarlo para desarrollar aplicaciones móviles con Ruby Motion o integrarte
  con Java usando JRuby.

### Desventajas

- Normalmente los lenguajes dinámicos e interpretados en un principio hacen que un equipo sea
  productivo gracias a su flexibilidad, sin embargo, a medida que ese equipo y el proyecto en el que
  se está trabajando vaya creciendo, los lenguajes dinámicos se van tornando en un cuello de botella
  por la incertidumbre que puede generar un cambio por pequeño que sea. Ruby es un lenguaje dinámico
  e interpretado y por lo tanto no es la mejor herramienta para proyectos o equipos grandes.

- Al ser un lenguaje intepretado y que requiere un Garbage collector o en español "recolector de
  basura", el desempeño de Ruby depende completamente del interprete. Actualmente todos los
  interpretes requieren un consumo de memoria y de poder de computo considerablemente mayor al de
  otros lenguajes no interpretados lo que hace que Ruby no sea la mejor opcioón para aplicaciones de
  alto desempeño como video juegos en 3D, machine learning, etc.

- MRI o CRuby, el interprete más popular de Ruby, usa un mecanismo llamado "Global Interpreter Lock"
  que hace que no se puedan ejecutar Threads en paralelo.

### Ventaja o desventaja?

- A diferencia de otros lenguajes populares como Python, Java, C# o Javascript que cuentan con
  gigantes como Google, Oracle o Microsoft, Ruby no cuenta con una gran empresa que soporte su
  desarrollo. Aunque por un lado eso significa que no tiene tantos recursos, por otro lado esto
  significa que la comunidad es la que determina su futuro.

## Quién está usando Ruby y para qué se está usando?

Gracias a la madurez del lenguaje, su flexibilidad, su expresividad y a su extenso ecosistema, Ruby
se ha convertido en el lenguaje de preferencia para varios startups al rededor del mundo. Algunos de
ellos son:

- Airbnb
- Twilio
- CrunchBase (TechCrunch)
- Ask.fm
- Bloomberg
- Dribble
- Github
- Fiverr
- Yellow Pages
- Cookpad
- Helpling
- SlideShare
- Zendesk
- Soundcloud
- Couchsurfing
- Groupon
- Indiegogo
- Kickstarter
- Shopify
- Twitch.tv
- Goodreads
- Heroku

Y algunas empresas Latinomaericanas:
- Tappsi
- Koombea
- Makeitreal.camp
- Fluvip
- Wesura
