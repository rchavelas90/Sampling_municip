



Propuesta de muestreo para comercios minoristas en el Distrito Federal
==================================================================

*Los textos de las gráficas y tablas pueden contener errores de codificación que dificultan la lectura, aún es está revisando como corregirlos*

Se requiere realizar un muestreo de comercios minoristas en el Distrito Federal, con apoyo del grupo de Introducción a la Ingeniería Industrial, del Tecnológico de Monterrey, Campus Toluca

El muestreo se realizará bajo un enfoque de muestreo estratificado, sin embargo dada la complejidad del cuestionario y la dificultad que se tiene para estimar la información sobre la variabilidad de los resultados (variables), determinar un tamaño de muestra para cada estrato como lo propone Cochran (1977), al igual que otros recursos bibliográficos que tratan métodos de muestreo, en el cual se pueda determinar un tamaño de muestra óptimo con base en la variación de la variable de estudio no se vislumbra factible (por el momento).

Por tal motivo, se propone una prueba piloto, con la cual se pueda muestrar una cantidad importante de comercios en la Ciudad de México (tomando como estratos cada Delegación) y que ésta información nos permita identificar el grado de precisión del estudio. A continuación se resume el proceso que se siguió para determinar el número de establecimientos y la ubicación de los establecimientos que se pretende encuestar

Directorio Estadístico Nacional de Unidades Económicas [DENUE] (http://www.inegi.org.mx/est/contenidos/proyectos/denue/presentacion.aspx) 
------------------------------------------------------

La información sobre las unidades económicas se obtuvo del DENUE, que presenta información para identificar y ubicar más de 4 millones de establecimientos a nivel nacional. Para el Distrito Federal el DENUE 06/2012 provee información de más de 400,000 establecimientos





![plot of chunk grafica_all](figure/grafica_all.png) 


Mapa de *todos* los establecimientos en registrados en el DENUE




Selección de establecimientos
------------------------------

EL Sistema de Clasificación Industrial de América del Norte 2007 [SCIAN] (http://www.inegi.org.mx/sistemas/scian/contenidos/SCIAN%20M%C3%A9xico%202007%20(26enero2009\).pdf) presenta la nomenclatura usada en el DENUE para la clasificación de los establecimientos, para la selección de éstos se eligieron los siguientes tipos establecimientos, que en total equivalen a 171244 establecimientos seleccionados de un total de 429091 establecimientos y negocios que se presentan en el DENUE

<!-- Table generated in R 3.0.1 by googleVis 0.4.3 package -->
<!-- Fri Oct 11 19:53:27 2013 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataTableID6dd7a8bbe0e () {
  var data = new google.visualization.DataTable();
  var datajson =
[
 [
 "461110",
42084,
"Comercio al por menor en tiendas de abarrotes, ultramarinos y miscela_neas " 
],
[
 "722219",
19721,
"Otros restaurantes con servicio limitado " 
],
[
 "722212",
19556,
"Restaurantes de comida para llevar " 
],
[
 "463211",
13132,
"Comercio al por menor de ropa, excepto de bebe_ y lenceri_a" 
],
[
 "465311",
12913,
"Comercio al por menor de arti_culos de papeleri_a " 
],
[
 "465912",
5493,
"Comercio al por menor de regalos " 
],
[
 "467111",
5298,
"Comercio al por menor en ferreteri_as y tlapaleri_as" 
],
[
 "463310",
4617,
"Comercio al por menor de calzado " 
],
[
 "464111",
4530,
"Farmacias sin minisu_per " 
],
[
 "468211",
3849,
"Comercio al por menor de partes y refacciones nuevas para automo_viles, camionetas y camiones " 
],
[
 "722110",
2834,
"Restaurantes con servicio completo " 
],
[
 "467115",
2804,
"Comercio al por menor de arti_culos para la limpieza " 
],
[
 "465313",
2743,
"Comercio al por menor de revistas y perio_dicos " 
],
[
 "465111",
2321,
"Comercio al por menor de arti_culos de perfumeri_a y cosme_ticos " 
],
[
 "463215",
2301,
"Comercio al por menor de bisuteri_a y accesorios de vestir " 
],
[
 "464113",
2167,
"Comercio al por menor de productos naturistas, medicamentos homeopa_ticos y de complementos alimenticios " 
],
[
 "465112",
1995,
"Comercio al por menor de arti_culos de joyeri_a y relojes " 
],
[
 "465212",
1871,
"Comercio al por menor de juguetes" 
],
[
 "465914",
1560,
"Comercio al por menor de arti_culos desechables " 
],
[
 "467114",
1386,
"Comercio al por menor de vidrios y espejos " 
],
[
 "465911",
1337,
"Comercio al por menor de mascotas " 
],
[
 "465919",
1266,
"Comercio al por menor de otros arti_culos de uso personal " 
],
[
 "467113",
1263,
"Comercio al por menor de pintura " 
],
[
 "722211",
1254,
"Restaurantes de autoservicio " 
],
[
 "462112",
1189,
"Comercio al por menor en minisupers " 
],
[
 "468212",
1096,
"Comercio al por menor de partes y refacciones usadas para automo_viles, camionetas y camiones " 
],
[
 "461213",
969,
"Comercio al por menor de bebidas no alcoho_licas y hielo " 
],
[
 "465211",
901,
"Comercio al por menor de discos y casetes" 
],
[
 "463214",
853,
"Comercio al por menor de disfraces, vestimenta regional y vestidos de novia " 
],
[
 "465215",
780,
"Comercio al por menor de arti_culos y aparatos deportivos " 
],
[
 "463212",
715,
"Comercio al por menor de ropa de bebe_" 
],
[
 "463213",
649,
"Comercio al por menor de lenceri_a" 
],
[
 "461211",
620,
"Comercio al por menor de vinos y licores" 
],
[
 "465913",
616,
"Comercio al por menor de arti_culos religiosos " 
],
[
 "464112",
565,
"Farmacias con minisu_per " 
],
[
 "465312",
563,
"Comercio al por menor de libros" 
],
[
 "463216",
500,
"Comercio al por menor de ropa de cuero y piel y de otros arti_culos de estos materiales " 
],
[
 "461212",
436,
"Comercio al por menor de cerveza" 
],
[
 "467112",
396,
"Comercio al por menor de pisos y recubrimientos cera_micos " 
],
[
 "468213",
391,
"Comercio al por menor de llantas y ca_maras para automo_viles, camionetas y camiones " 
],
[
 "463217",
355,
"Comercio al por menor de pan_ales desechables " 
],
[
 "468411",
343,
"Comercio al por menor de gasolina y diesel " 
],
[
 "462111",
332,
"Comercio al por menor en supermercados " 
],
[
 "465216",
217,
"Comercio al por menor de instrumentos musicales " 
],
[
 "465214",
206,
"Comercio al por menor de equipo y material fotogra_fico " 
],
[
 "465213",
143,
"Comercio al por menor de bicicletas" 
],
[
 "463218",
83,
"Comercio al por menor de sombreros " 
],
[
 "467116",
21,
"Comercio al por menor de materiales para la construccio_n en tiendas de autoservicio especializadas " 
],
[
 "467117",
10,
"Comercio al por menor de arti_culos para albercas y otros arti_culos " 
] 
];
data.addColumn('string','Cod_SCIAN');
data.addColumn('number','Establec');
data.addColumn('string','Descrip');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartTableID6dd7a8bbe0e() {
  var data = gvisDataTableID6dd7a8bbe0e();
  var options = {};
options["allowHtml"] = true;
options["page"] = "enable";
options["width"] =    700;
options["pageSize"] =     20;

     var chart = new google.visualization.Table(
       document.getElementById('TableID6dd7a8bbe0e')
     );
     chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  var chartid = "table";

  // Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
  var i, newPackage = true;
  for (i = 0; newPackage && i < pkgs.length; i++) {
    if (pkgs[i] === chartid)
      newPackage = false;
  }
  if (newPackage)
    pkgs.push(chartid);

  // Add the drawChart function to the global list of callbacks
  callbacks.push(drawChartTableID6dd7a8bbe0e);
})();
function displayChartTableID6dd7a8bbe0e() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
    var pkgCount = pkgs.length;
    google.load("visualization", "1", { packages:pkgs, callback: function() {
      if (pkgCount != pkgs.length) {
        // Race condition where another setTimeout call snuck in after us; if
        // that call added a package, we must not shift its callback
        return;
      }
      while (callbacks.length > 0)
        callbacks.shift()();
    } });
  }, 100);
}
 
// jsFooter
 </script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID6dd7a8bbe0e"></script>
 
<!-- divChart -->
  
<div id="TableID6dd7a8bbe0e"
  style="width: 700px; height: 500px;">
</div>


En el siguiente mapa se observan todas la ubicaciones de los establecimientos seleccionados de acuerdo al código SCIAN

![plot of chunk grafica_retail](figure/grafica_retail.png) 


Porcentaje por delegación y tamaño de muestra
---------------------------------------------
El muestreo de los comercios se realizará con base en la proporción de comercios que se encuentran en cada delegación, Cochran menciona que la precisión adquirida bajo este esquema es menor a la que se obtiene si se utiliza una selección óptima de tamaños de muestra, pero el método de selección por proporción es ideal para la prueba piloto, a continuación se muestra la tabla con el número de establecimientos por delegación y el porcentaje que representa del total.

Para obtener el tamaño de muestra suponemos que podremos realizar aproximadamente 120 encuestas el día de la prueba piloto (6 horas efectivas X 2 encuestas por hora X 10 equipos), pero suponiendo que no todos los locales responden a las preguntas o que puede que estén cerrados (ya que el DENUE no menciona en el status del establecimiento si se encuentra cerrado), se aproxima a 200 encuestas el tamaño de muestra.





<!-- Table generated in R 3.0.1 by googleVis 0.4.3 package -->
<!-- Fri Oct 11 19:53:40 2013 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataTableID6dd6c6ac7fc () {
  var data = new google.visualization.DataTable();
  var datajson =
[
 [
 "CUAUHT������MOC",
31825,
0.186,
38 
],
[
 "IZTAPALAPA",
29821,
0.174,
35 
],
[
 "GUSTAVO A. MADERO",
20844,
0.122,
25 
],
[
 "VENUSTIANO CARRANZA",
12367,
0.072,
15 
],
[
 "TLALPAN",
9323,
0.054,
11 
],
[
 "COYOAC������N",
8687,
0.051,
11 
],
[
 "������LVARO OBREG������N",
8405,
0.049,
10 
],
[
 "BENITO JU������REZ",
8151,
0.048,
10 
],
[
 "MIGUEL HIDALGO",
7973,
0.047,
10 
],
[
 "AZCAPOTZALCO",
7341,
0.043,
9 
],
[
 "IZTACALCO",
6706,
0.039,
8 
],
[
 "XOCHIMILCO",
6451,
0.038,
8 
],
[
 "TL������HUAC",
6044,
0.035,
8 
],
[
 "LA MAGDALENA CONTRERAS",
2513,
0.015,
3 
],
[
 "CUAJIMALPA DE MORELOS",
2456,
0.014,
3 
],
[
 "MILPA ALTA",
2337,
0.014,
3 
] 
];
data.addColumn('string','Deleg');
data.addColumn('number','Establec');
data.addColumn('number','Porcent');
data.addColumn('number','Muestra');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartTableID6dd6c6ac7fc() {
  var data = gvisDataTableID6dd6c6ac7fc();
  var options = {};
options["allowHtml"] = true;
options["width"] =    600;
options["height"] =    400;

     var chart = new google.visualization.Table(
       document.getElementById('TableID6dd6c6ac7fc')
     );
     chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  var chartid = "table";

  // Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
  var i, newPackage = true;
  for (i = 0; newPackage && i < pkgs.length; i++) {
    if (pkgs[i] === chartid)
      newPackage = false;
  }
  if (newPackage)
    pkgs.push(chartid);

  // Add the drawChart function to the global list of callbacks
  callbacks.push(drawChartTableID6dd6c6ac7fc);
})();
function displayChartTableID6dd6c6ac7fc() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
    var pkgCount = pkgs.length;
    google.load("visualization", "1", { packages:pkgs, callback: function() {
      if (pkgCount != pkgs.length) {
        // Race condition where another setTimeout call snuck in after us; if
        // that call added a package, we must not shift its callback
        return;
      }
      while (callbacks.length > 0)
        callbacks.shift()();
    } });
  }, 100);
}
 
// jsFooter
 </script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID6dd6c6ac7fc"></script>
 
<!-- divChart -->
  
<div id="TableID6dd6c6ac7fc"
  style="width: 600px; height: 400px;">
</div>


Viendo que el tamaño de muestra para cada delegación es considerablemente bajo y que algunas delegaciones tienen tamaños de muestra aún más bajos (últimos 7 registros), se pudieran quitar estas delegaciones de la muestra, además de que son las más lejanas y más grandes por lo que complicarían mucho el muestreo y sería muy difícil para los equipos viajar tanto por uno o dos puntos. El plan de muestreo queda como siguie




<!-- Table generated in R 3.0.1 by googleVis 0.4.3 package -->
<!-- Fri Oct 11 19:53:41 2013 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataTableID6dd566fa8ff () {
  var data = new google.visualization.DataTable();
  var datajson =
[
 [
 "CUAUHT������MOC",
31825,
0.232,
47 
],
[
 "IZTAPALAPA",
29821,
0.217,
44 
],
[
 "GUSTAVO A. MADERO",
20844,
0.152,
31 
],
[
 "VENUSTIANO CARRANZA",
12367,
0.09,
18 
],
[
 "TLALPAN",
9323,
0.068,
14 
],
[
 "COYOAC������N",
8687,
0.063,
13 
],
[
 "������LVARO OBREG������N",
8405,
0.061,
13 
],
[
 "BENITO JU������REZ",
8151,
0.059,
12 
],
[
 "MIGUEL HIDALGO",
7973,
0.058,
12 
] 
];
data.addColumn('string','Deleg');
data.addColumn('number','Establec');
data.addColumn('number','Porcent');
data.addColumn('number','Muestra');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartTableID6dd566fa8ff() {
  var data = gvisDataTableID6dd566fa8ff();
  var options = {};
options["allowHtml"] = true;
options["page"] = "enable";
options["width"] =    600;
options["height"] =    200;

     var chart = new google.visualization.Table(
       document.getElementById('TableID6dd566fa8ff')
     );
     chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  var chartid = "table";

  // Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
  var i, newPackage = true;
  for (i = 0; newPackage && i < pkgs.length; i++) {
    if (pkgs[i] === chartid)
      newPackage = false;
  }
  if (newPackage)
    pkgs.push(chartid);

  // Add the drawChart function to the global list of callbacks
  callbacks.push(drawChartTableID6dd566fa8ff);
})();
function displayChartTableID6dd566fa8ff() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
    var pkgCount = pkgs.length;
    google.load("visualization", "1", { packages:pkgs, callback: function() {
      if (pkgCount != pkgs.length) {
        // Race condition where another setTimeout call snuck in after us; if
        // that call added a package, we must not shift its callback
        return;
      }
      while (callbacks.length > 0)
        callbacks.shift()();
    } });
  }, 100);
}
 
// jsFooter
 </script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID6dd566fa8ff"></script>
 
<!-- divChart -->
  
<div id="TableID6dd566fa8ff"
  style="width: 600px; height: 200px;">
</div>


Próximos pasos
----------------

 - Para la selección de los establecimientos, se hará un muestreo aleatorio simple por cada uno de las delegaciones y se extrareá el número de establecimientos que se presenta en la columna de *Muestra* de la tabla anterior

Anexo 1: Clasificación de los negocios
-----------------------------

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

Anexo 2: Delegaciones del distrito federal
-----------------------------
Mapa en [link](http://www.ambientalisto.com/wp-content/uploads/2011/05/delegaciones.jpg)


Anexo 3: Otras Consideraciones
-----------------------------


*No deben registrar servicios o que vendan productos desconocidos
*No registrar tiendas departamentales: Establecimientos grandes, con un amplio surtido de ropa, electrodomésticos, muebles, entre otras.

** Para capacitación: Como "maximizar" las respuestas obtenidas? 
** Recomendar que antes revisen TODAS las ubicaciones y que se enfoquen en avenidas principales (seguras)?


*Referencias*

Cochran, W (1977) Sampling Techniques (3rd Edition) New York: John Wiley & Sons
