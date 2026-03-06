# Análisis de Datos: Catálogo de Netflix 🎬

Este proyecto consiste en la creación y análisis de una base de datos relacional sobre series de Netflix, sus episodios y los actores que participan en ellas.

## 🛠️ Tecnologías utilizadas
* **Lenguaje:** SQL (MySQL)
* **Herramientas:** MySQL Workbench / GitHub

## 📊 Estructura de la Base de Datos
La base de datos `NetflixDB` se compone de las siguientes tablas:
* **Series:** Almacena información general de las series.
* **Episodios:** Detalle de cada capítulo, incluyendo rating de IMDb.
* **Actores:** Datos básicos de los intérpretes.
* **Actuaciones:** Tabla intermedia que relaciona actores con series y personajes.

## 🔍 Consultas Realizadas
En el archivo `consultas_analisis.sql` encontrarás soluciones a:
1. Filtrado de series por género y año.
2. Ranking de los mejores episodios según IMDb.
3. Relación completa de actores y sus personajes (Uso de **Triple JOIN**).
4. Cálculo de promedios de duración por serie.

## 🚀 Cómo usar este proyecto
1. Ejecutar `Netflix_schema.sql` para crear las tablas.
2. Ejecutar `Netflix_data.sql` para cargar los registros.
3. Ejecutar `consultas_analisis.sql` para ver los resultados del análisis.
