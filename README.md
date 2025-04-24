# Vicentanario
<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg" alt="Donate us"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow" alt="Follow us on Twitter"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Project setup

```bash
$ npm install
```

## Compilar y correr el proyecto

```bash
# docker
$ docker-compose up -d

# watch mode
$ npm run start:dev
```

# Ver el README
para ver el README
- ctrl + p 
- markdown: open preview
# politicas
- no modificar el main.ts
- no modificar el app.modules.ts
- usar las ramas con nombres
- para instalar una nueva depenedencia avisar ya que se instalaran a la rama principal para hacer el merge a las otras 
- la creacion de nuevos modulos modifican el app.modules.ts
- si no cambiar de rama con modificaciones pendientes para eso usar un git stash o git stash save "Mis cambios temporales antes de cambiar de rama" y cuando se vuelva a la rama git stash apply ,para ver los shath git stash list y eliminar los stach git stash drop.
- si el main tiene cambios aplicarlos a la rama que se esta usando
## Buenas practicas
copiar el .env.template y borrar el template //actualmente bacio

## proceso para crear los modulos
para crear los modulos se hacen de las siguiente forma con --no-spec para que creen sin las pruebas unitarias
siguiente se elige respi y yes
```bash
nest g resource historias --no-spec
nest g resource hitos_historicos --no-spec
nest g resource puntos_turisticos --no-spec
```
## dependencia
dependencias utilizadas necesario usarlas en el proyecto para simplificar las tareas
- uuid para usarlos en los id
- configModule para poder usar las variables de entorno
- typeOrm para hacer las consultas a la base de datos en ves de consultas sql
- class-validtor valida datos que llegan a la aplicacion se usan el los dtos
- class-transfor  utiliza para transformar objetos JavaScript simples a instancias de clases y viceversa.

## como levantar la base de datos de docker
```bash
docker-compose up -d
```
## como detener
```bash 
docker-compose down
```
## PC LENTA?
si despues del desarrollo la pc tiene bajo rendimiento se debe a que el contenedor sigue activo para verificar si los contenedores estan activos 
```bash 
docker ps
```
## para para los contenedodres
```bash 
docker stop vicentenario
```
## para iniciarlo el contenedor para pruebas
```bash 
docker start vicentenario
```
## TOMAS EN CUANTA CHATGPT
en la el archivo main.ts y el app.modules.ts se esta usando el validationpipe tomalo encuanta al momento de hacer consulta con la IA o chatGPT

