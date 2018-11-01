# 1 - Configuracioón del ambiente de desarrollo

Uno de los problemas más tediosos a la hora de programar es la configuracioón del ambiente de
desarrollo. Si estuvieramos trabajando en el mismo proyecto, lo ideal es que ambos tuvieramos
exactamente el mismo ambiente de desarrollo incluyendo tipo de computador, sistema operativo,
versión del sistema operativo, etc; e inclusive, sería aún más ideal si tuvieramos el mismo ambiente
usado en producción. Lamentablemente esto es técnicamente imposible porque en la pracáctica cada
desarrollador va a tener un ambiente con diferente sistema operativo, RAM, disco duro, red, CPU,
etc. Adicionalmente en este caso en particular, mientras yo escribo esto, no tengo idea del
computador que vas a estar usando.

Hay varias formas de solucionar este problema:

- Usar Docker y opcionalmente Docker compose en caso de necesitar múltiples servicios/instancias
- Usar una máquina virtual
- Usar una máquina virtual en la nube
- Usar Docker dentro de una máquina virtual

Docker es una muy buena alternativa porque es un componente muy liviano y provee suficientes
grarantías, sin embargo, hay que tener en cuenta algunos detalles dependiendo del sistema operativo
"host" en donde se esté utilizando ya que su comportamiento puede variar ligeramente.
Adicionalmente, el proyecto del curso es un juego que necesita una interfaz gráfica, y aunque
existen formas de utilizar Docker para ejecutar aplicaciones con interfaz gráfica, el procedimiento
para hacer que esto funcione varia mucho entre sistemas operativos y configuraciones así que para
estar seguros de que todos vamos a estar en la misma página vamos a utilizar una máquina virtual.

Algo interesante es que vamos a utilizar dos herramientas hechas en Ruby:
[Vagrant](https://www.vagrantup.com/) y [Chef](https://www.chef.sh/).

1. Vagrant es una herramienta open source utilizada para gestionar máquinas virtuales utilizadas
   para desarrollo
2. Chef es una herramienta open source utilizada para configurar sistemas. Por ejemplo, configurar
   ambientes de desarrollo con las herramientas necesarias.

## Creando la máquina virtual

Antes de poder crear la máquina virtual vas a tener que instalar vagrant y virtual box. Puedes
descargar vagrant en
[https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html) y Virtual Box
en [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html).

Una vez hayas instalado vagrant y virtualbox sigue estos pasos:

1. Abre la terminal y clona el repositorio del curso https://github.com/c4fnp/libro-ruby

  ```(bash)
  git clone git@github.com:c4fnp/libro-ruby.git
  ```

1. En la terminal, navega a la raiz del repositorio del curso

  ```(bash)
  cd libro-ruby
  ```

1. Inicia la configuración de la máquina virtual con Vagrant

  ```(bash)
  vagrant up --provider virtualbox
  ```

  Debes ver algo pareceido a esto:

  ![Primera vez ejecutando la máquina virtual](/assets/starting_vm_first_time.gif)

  Este comando puede tardar varios minutos o inclusive horas dependiendo de tu conexión a internet
  ya que Vagrant debe descargar varios archivos "pesados" como la imagen de la máquina virtual, y
  adicionalmente, la primera vez que se ejecute la máquina virtual, Chef va a configurar el ambiente
  con las dependencias necesarias lo que implica descargar e instalar Ruby lo cual es otra operación
  que puede tardar varios minutos.

  ![Espera ...](/assets/wait.gif)

## Hello World

Ahora que la máquina virtual está lista, vamos a hacer un "Hello World":

1. Conéctate a la máquina virtual

  ```(bash)
  vagrant ssh
  ```

  Debes ver algo así:
  
  ![Conectandose a la máquina virtual](/assets/vm_first_login.png)

1. Inicia el REPL de Ruby:

  ```(bash)
  irb
  ```

1. Escribe tu primera línea de código en Ruby

  ```(ruby)
  nombre = "Simón"
  puts "Hola Mundo! me llamo #{nombre}"
  ```

Felicitaciones! acabas de escribir tu primer programa en Ruby

<!--TODO: Add an extra chapter explaining how to setup everything by yourlself -->
