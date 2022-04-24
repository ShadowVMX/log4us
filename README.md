# log4us
Herramienta que detecta la cantidad de IPs que han tratado de conectarse a través de ssh, usuarios que han sido probados, las IPs que han fracaso en la conexión y, por último, las IPs y usuarios que han logrado acceder al sistema.



## INSTALACIÓN ##

![setup sh](https://user-images.githubusercontent.com/92258683/164951383-e515dd1c-c2a7-4d4d-b0ee-7e7706ec6648.png)

Simplemente debemos de ejecutar el binario como root --> ./setup.sh (En caso de no ser root, nos dará error).

Tiene varias líneas comentadas, por lo que si quiere acceder al resto, simplemente descomenta.

## Ejecución ##

Se le instalará en el sistema, por lo que no necesitará usar ./log4me --> log4me directamente.

![log4me 1](https://user-images.githubusercontent.com/92258683/164951407-15d113b4-3a05-4f4b-bdbe-860922adf263.png)

Una vez ejecutemos la herramienta, esta reportará por consola la presencia o no de los registros SSH en el sistema, por lo que podremos saber si han intentado acceder por ssh a nuestro dispositivo/servidor.

![log4me 2](https://user-images.githubusercontent.com/92258683/164951422-0817748c-63d2-4412-b3ff-caa24366a0db.png)

En caso negativo, nuestra herramienta simplemente se saldrá automáticamente sin reportar nada puesto que necesita del auth.log que se generar gracias al rsyslog del sistema.

![log4me 3](https://user-images.githubusercontent.com/92258683/164951437-331710f4-3538-45df-a1e7-f461a7cf8cd5.png)

En caso de reporte positivo veremos el OUTPUT de nuestra herramienta, por lo que nos reportará información bastante importante y relevante:

  1-Las IPs que han tratado de conectarse (Tanto privadas como públicas).
  2-Las conexiones que han fallado (contraseña inválida).
  3-Nombres de usuarios que han probado para conectarse al sistema.
  4- Contraseñas válidas, por lo que el login ha sido positivo (se reportará como peligro junto con el puerto para poder cortar comunicación rápidamente).
  
  
  ## La herramienta acabo de desarrollarla y, me gustaría que, si alguien la necesita o quiere que la actualice para otros SO, distribuciones, etc que me escriba sin ningún problema, se trata de ayudarnos entre todos. ##
  
  Para poneros en contacto conmigo --> juanmacoello94@gmail.com
  
  
