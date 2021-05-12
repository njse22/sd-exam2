# PARCIAL 2 - SISTEMAS DISTRIBUIDOS
### NICOLÁS JAVIER SALAZAR
### NELSON STYVEN LÓPEZ
### DANIEL ALEJANDRO CERQUERA

##### Desglose claro de los pasos: se supone que alguien que no esté familiarizado con su desarrollo debería ser capaz de leer los documentos y ejecutar los passos necesarios para correr el ambiente de su app.

##### Prerequisitos
- Docker- Compose
- Make
- go
- postgresql

###### Para levantar el proyecto:
make

###### Para hacer el test del proyecto:
make test


##### ¿Cómo ejecutar?
`make`


Al ejecutar el comando `make` se hace un build de los DockerFile y posteriormente se hace un
`docker-compose up -d`

Luego, si se desea limpiar el proyecto se ejecuta el comando `make clean` que consta de los pasos:
`docker-compose down`
`docker volume rm`

#### Si necesitas poner este servicio en producción, ¿qué crees que puede faltar? ¿que le falta? ¿Qué le añadirías si tuvieras más tiempo?

Se adquiriría un dominio y una IP Pública asociada al host que contenga el balanceador de carga. Cada contenedor se ejecutaría en diferentes instancias en la nube.

Se desarrollaría un Front-End que consuma la API-REST del Back-End ya desarrollado, dicho Front-End estaría soportado por distintos contenedores y, de igual forma un balanceador de cargas para ellos.
