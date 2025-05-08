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

La aplicación "Historia y Turismo de Santa Cruz" es una plataforma diseñada para proporcionar a los ciudadanos y turistas una visión completa de la rica historia y los principales puntos turísticos de Santa Cruz de la Sierra. A través de esta app, los usuarios pueden explorar mapas interactivos, conocer la historia de lugares emblemáticos y descubrir puntos turísticos importantes de la ciudad. Esta herramienta tiene como objetivo ayudar tanto a los habitantes de la ciudad como a los visitantes, especialmente durante las festividades del aniversario de Santa Cruz, brindando información relevante para que puedan disfrutar y aprender más sobre la ciudad.

## Project setup

```bash
$ npm install
```

## Compilar y correr el proyecto

```bash
# docker
$ docker-compose up -d

# ubica la base de datos
$ cd backup

# copia la base de datos al contenedor
$ docker cp backup_vicentenario.sql vicentenario:/backup_vicentenario.sql

# restaura la base de datos
$ docker exec -i vicentenario psql -U udinova -d vicentenario_db -f /backup_vicentenario.sql
 
 #regresa al proyecto
$ cd ..
# watch mode
$ npm run start:dev
```
y apartir de esto solo ejecutar el comando npm run start:dev
# CONSUMO DE API
## imagenes
por punto turistico 

peticion :get

usando el id del punto turistico

api url : http://localhost:3000/api/imagenes/por-punto-turistico/9134084d-ba18-4c1b-a158-0a2a22b360bd


```bash
[
    {
        "imagen_ID": "8f45e604-0e0d-44db-89af-44a230718e9e",
        "Estado": 1,
        "URL": "https://res.cloudinary.com/dve46ccsk/image/upload/v1746378532/yn2flfvwooft29h7moit.jpg",
        "Fecha_Subida": "2025-05-04",
        "punto_turistico": {
            "PuntoHist_ID": "9134084d-ba18-4c1b-a158-0a2a22b360bd",
            "Nombre": "Catedral Metropolitana Basílica Menor de San Lorenzo",
            "Descripcion": "Iglesia principal de Santa Cruz de la Sierra",
            "FechaCreacion": "2023-04-22",
            "Longitud": "-63.181848",
            "Latitud": "-17.783844",
            "Estado": 1,
            "HorarioServicio": "07:00 - 20:00",
            "CostoEntrada": "Gratis",
            "Ciudad": "Santa Cruz de la Sierra",
            "Pais": "Bolivia",
            "Localidad": "Centro Histórico",
            "Visibilidad": 1
        }
    }
]

```
por historias

usando el id de la historias

API url :http://localhost:3000/api/imagenes/por-historia/9c08a940-c555-4dc8-8ce8-413cb52ceacf
```bash
[
    {
        "imagen_ID": "f890d890-5ad8-4598-9a3c-ce4012e32586",
        "Estado": 1,
        "URL": "https://res.cloudinary.com/dve46ccsk/image/upload/v1746218748/ijpbgtunmprphirkager.jpg",
        "Fecha_Subida": "2025-05-02",
        "historia": {
            "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
            "titulo": "Fundación de Santa Cruz",
            "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
            "estado": true
        }
    }
]
```
## Get PuntosTuristicos
peticion : GET

API url: http://localhost:3000/api/puntos-turisticos
```bash
[
    {
        "PuntoHist_ID": "267eb21a-00cf-4f95-8ab9-f582d52c3563",
        "Nombre": "Parque Nacional Noel Kempff Mercado",
        "Descripcion": "Centro de conservación biológica",
        "FechaCreacion": "2023-06-15",
        "Longitud": "-60.86667",
        "Latitud": "-14.26667",
        "Estado": 1,
        "HorarioServicio": "08:00 - 16:00",
        "CostoEntrada": "50.00 Bs",
        "Ciudad": "Santa Cruz de la Sierra",
        "Pais": "Bolivia",
        "Localidad": "Provincia Velasco",
        "Visibilidad": 1
    },
    {
        "PuntoHist_ID": "9134084d-ba18-4c1b-a158-0a2a22b360bd",
        "Nombre": "Catedral Metropolitana Basílica Menor de San Lorenzo",
        "Descripcion": "Iglesia principal de Santa Cruz de la Sierra",
        "FechaCreacion": "2023-04-22",
        "Longitud": "-63.181848",
        "Latitud": "-17.783844",
        "Estado": 1,
        "HorarioServicio": "07:00 - 20:00",
        "CostoEntrada": "Gratis",
        "Ciudad": "Santa Cruz de la Sierra",
        "Pais": "Bolivia",
        "Localidad": "Centro Histórico",
        "Visibilidad": 1
    }
]

```
## Get PuntosTuristicosById
peticion : GET

API url: http://localhost:3000/api/puntos-turisticos/{id_punto_hist}
```bash
{
    "PuntoHist_ID": "267eb21a-00cf-4f95-8ab9-f582d52c3563",
    "Nombre": "Parque Nacional Noel Kempff Mercado",
    "Descripcion": "Centro de conservación biológica",
    "FechaCreacion": "2023-06-15",
    "Longitud": "-60.86667",
    "Latitud": "-14.26667",
    "Estado": 1,
    "HorarioServicio": "08:00 - 16:00",
    "CostoEntrada": "50.00 Bs",
    "Ciudad": "Santa Cruz de la Sierra",
    "Pais": "Bolivia",
    "Localidad": "Provincia Velasco",
    "Visibilidad": 1
}

```
## Get Historias
peticion : GET

API url: http://localhost:3000/api/historias
```bash
[
    {
        "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
        "titulo": "Fundación de Santa Cruz",
        "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
        "estado": true,
        "hitos_historicos": [
            {
                "id_hito_historico": "065be3fc-5d87-410b-9c5e-4e08bb938973",
                "titulo": "Consolidación definitiva",
                "descripcion": "Se establece definitivamente la ubicación actual.",
                "fecha": "1622-01-01"
            },
            {
                "id_hito_historico": "2d333291-2c27-41a1-8c0b-558f21c4265c",
                "titulo": "Traslado de la Ciudad",
                "descripcion": "La ciudad fue trasladada cerca del río Piraí.",
                "fecha": "1595-01-01"
            },
            {
                "id_hito_historico": "4f563505-03e8-4475-959c-a5030da7ae76",
                "titulo": "Fundación de Santa Cruz",
                "descripcion": "Fundación original en la región de Chiquitos.",
                "fecha": "1561-02-26"
            }
        ]
    },
    {
        "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
        "titulo": "Fundación de Santa Cruz",
        "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
        "estado": true,
        "hitos_historicos": [
            {
                "id_hito_historico": "065be3fc-5d87-410b-9c5e-4e08bb938973",
                "titulo": "Consolidación definitiva",
                "descripcion": "Se establece definitivamente la ubicación actual.",
                "fecha": "1622-01-01"
            },
            {
                "id_hito_historico": "2d333291-2c27-41a1-8c0b-558f21c4265c",
                "titulo": "Traslado de la Ciudad",
                "descripcion": "La ciudad fue trasladada cerca del río Piraí.",
                "fecha": "1595-01-01"
            },
            {
                "id_hito_historico": "4f563505-03e8-4475-959c-a5030da7ae76",
                "titulo": "Fundación de Santa Cruz",
                "descripcion": "Fundación original en la región de Chiquitos.",
                "fecha": "1561-02-26"
            }
        ]
    }
]

```
## Get HistoriasById
peticion : GET

API url: http://localhost:3000/api/historias/{id_historia}
```bash
{
    "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
    "titulo": "Fundación de Santa Cruz",
    "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
    "estado": true,
    "hitos_historicos": [
        {
            "id_hito_historico": "4f563505-03e8-4475-959c-a5030da7ae76",
            "titulo": "Fundación de Santa Cruz",
            "descripcion": "Fundación original en la región de Chiquitos.",
            "fecha": "1561-02-26"
        },
        {
            "id_hito_historico": "2d333291-2c27-41a1-8c0b-558f21c4265c",
            "titulo": "Traslado de la Ciudad",
            "descripcion": "La ciudad fue trasladada cerca del río Piraí.",
            "fecha": "1595-01-01"
        },
        {
            "id_hito_historico": "065be3fc-5d87-410b-9c5e-4e08bb938973",
            "titulo": "Consolidación definitiva",
            "descripcion": "Se establece definitivamente la ubicación actual.",
            "fecha": "1622-01-01"
        }
    ]
}

```
## Get HitosHistoricos
peticion : GET

API url: http://localhost:3000/api/hitos-historicos
```bash
[
    {
        "id_hito_historico": "4f563505-03e8-4475-959c-a5030da7ae76",
        "titulo": "Fundación de Santa Cruz",
        "descripcion": "Fundación original en la región de Chiquitos.",
        "fecha": "1561-02-26",
        "historia": {
            "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
            "titulo": "Fundación de Santa Cruz",
            "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
            "estado": true
        }
    },
    {
        "id_hito_historico": "2d333291-2c27-41a1-8c0b-558f21c4265c",
        "titulo": "Traslado de la Ciudad",
        "descripcion": "La ciudad fue trasladada cerca del río Piraí.",
        "fecha": "1595-01-01",
        "historia": {
            "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
            "titulo": "Fundación de Santa Cruz",
            "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
            "estado": true
        }
    }
]

```
## Get HitosHistoricosById

peticion : GET

API url: http://localhost:3000/api/hitos-historicos/{id_hito_historico}
```bash
{
    "id_hito_historico": "4f563505-03e8-4475-959c-a5030da7ae76",
    "titulo": "Fundación de Santa Cruz",
    "descripcion": "Fundación original en la región de Chiquitos.",
    "fecha": "1561-02-26",
    "historia": {
        "id_historia": "9c08a940-c555-4dc8-8ce8-413cb52ceacf",
        "titulo": "Fundación de Santa Cruz",
        "descripcion": "La ciudad de Santa Cruz de la Sierra fue fundada por Ñuflo de Chávez.",
        "estado": true
    }
}

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

# git tag
## Asegúrate de estar en la rama
```bash 
git checkout main
```
## Sincroniza tu repositorio
```bash 
git pull origin main
```
## Crea un tag
```bash 
git tag -a v1.0.0 -m "Descripción de la versión"
```
## Empuja el tag al repositorio remoto
```bash 
git push origin v1.0.0
```
## Verifica los tags
```bash 
git tag
```
## Eliminar el tag localmente
```bash 
git tag -d v1.0.0
```
## Eliminar el tag del repositorio remoto
```bash 
git push --delete origin v1.0.0
```