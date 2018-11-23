# 3.4 - Bundler y gemas

Una ventaja de la comunidad de Ruby sobre otras comunidades de lenguajes de programación es que definen convenciones y se ponen de acuerdo así que normalmente vas a encontrar una sola forma recomendada para hacer cosas. Esto puede sonar trivial, pero es algo que genera muchos problemas en otras comunidades. En este capítulo vamos a hablar sobre la herramienta por defecto usada para manejar dependencias en un proyecto de Ruby: bundler.

## Creando un proyecto

Primero instala bundler usando `gem`. `gem` instala la gema de manera global. Si estás trabajando en varios proyectos a la vez y si cada proyecto usa la misma gema pero con diferentes versiones vas a tener problemas. Por eso te recomiendo no volver a usar `gem` para instalar dependencias y en cambio siempre usar bundler el cual se encarga de aislar las dependencias requeridas por cada proyecto.

Instalar bundler:

```(bash)
gem install bundler
# Verifica que quedó instalado
bundle --version
```

Crear un proyecto:

```(bash)
# Revisa la documentación de bundle init
bundle init --help
mkdir snake
cd snake
bundle init
cat Gemfile
```

Tu Gemfile se debe ver parecido a esto:

```(ruby)
# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
```

## Usando gemas

El registro público de gemas se encuentra en [https://rubygems.org/](https://rubygems.org/) y puedes usar github o [https://www.ruby-toolbox.com/](https://www.ruby-toolbox.com/) para encontrar gemas.

Vamos a iniciar instalando una gema de prueba llamada Faker. Faker se utiliza normalmente para hacer testing pues sirve para generar datos "falsos" como emails, nombres de personas, apellidos, nombres de empresas, etc. Tal vez en este momento no haga mucho sentido, pero más adelante cuando tengas que escribir pruebas para tus proyectos en Ruby vas a ver la necesidad de generar datos de prueba y en ese momento te vas a acordar de faker.

Reemplaza la línea que dice `# gem "rails"` con `gem "faker", "~> 1.9"`

```(ruby)
# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "faker", "~> 1.9"
```

Fíjate en el `"~> 1.9"`. Aunque no es necesario este parametro, le indica a bundler qué version de la gema debe usar. Te recomiendo que siempre especifiques una versión para 

Ahora en la terminal corre el comando `bundle install`

Debes ver algo parecido a esto:

```(bash)
Fetching gem metadata from https://rubygems.org/....
Resolving dependencies...
Using bundler 1.17.1
Fetching concurrent-ruby 1.1.3
Installing concurrent-ruby 1.1.3
Fetching i18n 1.1.1
Installing i18n 1.1.1
Fetching faker 1.9.1
Installing faker 1.9.1
Bundle complete! 1 Gemfile dependency, 4 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

Y ahora corre el comando `bundle exec irb`

Dentro de irb juega con Faker:

```(ruby)
require 'faker'
Faker::Name.name
Faker::Lorem.methods
Faker::Lorem.sentence
Faker::Vehicle.make_and_model
```
