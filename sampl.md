



Propuesta de muestreo para comercios minoristas en el Distrito Federal
==================================================================

Se requiere realizar un muestreo de comercios minoristas en el Distrito Federal, con apoyo del grupo de Introducción a la Ingeniería Industrial.

El muestreo se realizará bajo un enfoque de muestreo estratificado, sin embargo dada la complejidad del cuestionario y la dificultad que se tiene para estimar la información sobre la variabilidad de los resultados (variables), determinar un tamaño de muestra para cada estrato como lo propone Cochran (1977), al igual que otros recursos bibliográficos que tratan métodos de muestreo, en el cual se pueda determinar un tamaño de muestra óptimo con base en la variación de la variable de estudio no lo considero factible (para el momento).

Por tal motivo, se propone una prueba piloto, con la cual se pueda muestrar una cantidad importante de comercios en la Ciudad de México (tomando como estratos cada Delegación) y que ésta información nos permita identificar el grado de precisión del estudio. A continuación se resume el proceso que se siguió para determinar el número de establecimientos y la ubicación de los establecimientos que se pretende encuestar

Directorio Estadístico Nacional de Unidades Económicas [DENUE] (http://www.inegi.org.mx/est/contenidos/proyectos/denue/presentacion.aspx) 
------------------------------------------------------

La información sobre las unidades económicas se obtuvo de DENUE, que presenta información para identificar y ubicar más de 4 millones de establecimientos a nivel nacional. Para el distrito federal el DENUE 06/2012 provee información de más de 400,000 establecimientos






```
## Warning: Removed 622 rows containing missing values (geom_point).
```

![plot of chunk grafica_all](figure/grafica_all.png) 


Mapa de todos los establecimientos en registrados en el DENUE




Selección de establecimientos
------------------------------

EL Sistema de Clasificación Industrial de América del Norte 2007 [SCIAN] (http://www.inegi.org.mx/sistemas/scian/contenidos/SCIAN%20M%C3%A9xico%202007%20(26enero2009\).pdf) presenta la nomenclatura usada en el DENUE para la clasificación de los establecimientos, para la selección de éstos se eligieron los siguientes tipos establecimientos, que en total equivalen a 171244 establecimientos seleccionados de un total de 429091 establecimientos y negocios que se presentan en el DENUE




En la siguiente gráfica se observan todas la ubicaciones de los establecimientos seleccionados de acuerdo al código SCIAN


```
## Warning: Removed 310 rows containing missing values (geom_point).
```

![plot of chunk grafica_retail](figure/grafica_retail.png) 


Porcentaje por delegación y tamaño de muestra
---------------------------------------------
El muestreo de los comercios se realizará con base en la proporción de comercios que se encuentran en cada delegación, Cochran menciona que la precisión adquirida bajo este esquema es menor a la que se obtiene si se utiliza una selección óptima de tamaños de muestra, pero el método de selección por proporción es ideal para la prueba piloto




Otros puntos del muestreo
---------------------

Clasificación de los negocios:

 - Gorcery Store: Tiendas muy pequeñas con un limitado espacio de venta, presentan una gran variedad de productos aunque en cantidades considerablemente menores a las de una convinence store  (Ej. Misceláneas, tiendas de abarrotes)
 - Convenience Store: Locales o instalaciones de tamaño medio, con un *amplio surtido* de artículos de uso diario o la venta de productos de un mismo segmento pero con una gran variedad de productos. Su función es ser una alternativa conveniente a un supermercado (Ej. 7/11, Oxxo, Modelorama)
 - Supermarkets: Instalación grande, con un amplio surtido de productos (Walmart o central de abastos) 
 - Kiosk: Tienda pequeña, generalmente rodeando al vendedor o con el vendedor por fuera. Pede ser un local abierto o cerrado y la venta se realiza sin que el cliente tenga que entrar, tomando la mercancía directamente del mostrador o por medio de una ventanilla. (Ejm. Puesto de periódicos y revistas)
 - Clothing Stores: Tiendas de cualquier tamaño que vendan únicamente artículos de vestir y de calzado
 - Gasoline Stations: Gasolinerías
 - Food Services and Drinking Places: Establecimientos que vendan solamente comida y bebida para consumo dentro del local o para llevar.
 - Drugstores: Tiendas especializadas en medicamentos, aunque pueden también vender otros productos en menor cantidad.
 - Others (Tianguis de calle, mercados tradicionales)



*No deben registrar tiendas de servicios o que vendan productos desconocidos
*No registrar tiendas departamentales: Establecimientos grandes, con un amplio surtido de ropa, electrodomésticos, muebles, entre otras.

** Para capacitación: Como "maximizar" las respuestas obtenidas 

Referencias


