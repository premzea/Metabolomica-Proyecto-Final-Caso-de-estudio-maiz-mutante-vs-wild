# Metabolomica-Proyecto-Final-Caso-de-estudio-maiz-mutante-vs-wild
En este repositorio se desarrollo un  proyecto final de metabolómica, en el cual, con datos de Metabolomics Workbench, se realizo un estudió del efecto de mutaciones en el maiz que impulsan el relleno del grano en el efecto nutricional del mismo, con base en el pipeline de metaboanalyst.

A considerar: 
1. Todos los archivos relevantes a los MSEA se encuentran en outputs, organizados en carpetas segun la base de datos utilizada, puesto que se considera información complementaría. 

**Pipeline analítico**
***Preprocesamiento de los datos: ***
En el módulo Statistical Analysis [One Factor], se cargó la matriz de metabolitos cuantitativos procesados en formato .csv con orientación Samples in rows a MetaboAnalyst 6.0
La plataforma ejecutó la verificación automática (Data Integrity Check), confirmando la ausencia de datos no numéricos, caracteres especiales no válidos o valores negativos de concentración/intensidad, el formato del documento, la ausencia de datos, etc.
***Normalización, transformación y escalamiento:***
No se realizó normalización por muestra debido a que los datos seleccionados ya estaban procesados
Los datos se transformaron logarítmicamente (log10) para estabilizar la varianza 
Para el escalamiento se seleccionó la opción de Pareto scaling ya que evita que compuestos sumamente abundantes dominen el modelo sin amplificar artificialmente el ruido de metabolitos minoritarios
***Análisis estadístico (univariado y multivariado):***
PCA: Se construyó un gráfico de puntuaciones 2D (PC1 vs PC2, PC1 vs PC3) para evaluar el agrupamiento espontáneo de las réplicas biológicas entre el mutante y el Wild-Type, además de un scree plot. (No se realizó el proceso de PLSDA debido a que los datos mostraron una separación evidente)
T-test: se aplicó un t-test de Welch (que no toma varianzas iguales) para controlar los falsos positivos derivados de pruebas múltiples, los p-valores se ajustaron mediante la Tasa de Falso Descubrimiento (FDR de Benjamini-Hochberg, q < 0.05) 
Fold change: se calculó el cambio relativo expresado en log2 (Fold Change) fijando un umbral mínimo de FC>1.5 (comparación Mutante vs Wild-Type)
Volcano plot: se unieron el FDR y el log2 (FC) en un Volcano Plot para aislar los metabolitos significativos en ambas dimensiones
Heatmap: se creó un clustering jerárquico (distancia Euclidiana, método Ward.D, autoscale por filas) para visualizar los patrones de acumulación y disminución entre grupos
***Identificación y metaanálisis:***
Mapeo de Nombres: los nombres químicos se estandarizaron comparándolos contra las bases de datos HMDB, KEGG y PubChem
Análisis de rutas: Se seleccionó la librería metabólica específica de Zea mays [zma] de la base de datos KEGG. El enriquecimiento de rutas se calculó mediante la prueba cuantitativa Global Test		
Enriquecimiento de Conjuntos Metabólicos (MSEA): análisis de sobre-representación (ORA) / enriquecimiento cuantitativo (QEA) sobre colecciones de conjuntos de metabolitos asociados a rutas KEGG, identificando los bloques metabólicos con alteraciones coordinadas significativas
  
