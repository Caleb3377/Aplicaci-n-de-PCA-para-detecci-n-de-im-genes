1 Introducción
En esta práctica, evaluaremos el rendimiento del algoritmo de las Componentes Principales (PCA) para el reconocimiento de imágenes en diferentes conjuntos de datos. El objetivo es aplicar un proceso de aprendizaje que nos permita clasificar nuevos ejemplos, proyectando las imágenes en un espacio de menor dimensión.

La técnica de PCA proporciona beneficios al reducir la dimensionalidad de las imágenes, preservando la información esencial mientras reduce la redundancia. Sin embargo, se asume que los datos observados son combinación lineal de una cierta base.

Contamos con dos conjuntos de datos: MNIST, que consiste en imágenes de dígitos en escala de grises (28x28 píxeles), y EMNIST, que incluye números y letras mayúsculas. Nuestro objetivo es evaluar la capacidad de PCA para clasificar correctamente estas imágenes.

2 Explicación del problema
El problema se presenta en dos partes. Primero, nos enfocamos en la clasificación binaria de dígitos que pueden tener similitudes visuales, como {1, 7}, {2, 7}, {3, 8}, {5, 6}, {4, 9}, y exploramos cómo PCA se desempeña en estos casos conflictivos.

Luego, abordamos la clasificación multiclase de dígitos del 0 al 9 y letras mayúsculas de la 'A' a la 'Z' en el conjunto EMNIST. Analizamos cómo varía la precisión con diferentes tamaños de conjunto de entrenamiento y prueba.

3 Resultados
3.1 Binarias Conflitivas
Para las clasificaciones binarias de dígitos conflictivos, PCA demostró un rendimiento sólido con accuracies del 90% al 100%.


3.2 Clasificación m´ulticlase de MNIST
En la clasificación multiclase de MNIST, observamos que la precisión disminuye a medida que aumenta el número de clases y el tamaño del conjunto de datos.


3.3 Clasificación m´ulticlase de EMNIST
La clasificación multiclase de EMNIST presenta un desafío adicional. Aumentar el tamaño del conjunto de entrenamiento tiene un impacto positivo en la precisión hasta cierto punto.


4 Conclusión final
4.1 Clasificaciones Binarias Conflitivas
PCA demostró ser eficaz en la clasificación de dígitos conflictivos, destacándose en la distinción de clases similares.

4.2 Clasificación Multiclase de MNIST
En MNIST, la capacidad de PCA para distinguir entre clases específicas disminuye a medida que aumenta el número de clases.

4.3 Clasificación Multiclase de EMNIST
EMNIST, con letras mayúsculas, presenta un desafío adicional. Aumentar el tamaño del conjunto de entrenamiento tiene un impacto positivo, pero se observa una saturación en la mejora de la precisión.

En resumen, PCA destaca en la reducción de dimensionalidad y búsqueda de direcciones principales de variación. La elección del tamaño del conjunto de entrenamiento es crucial, y en problemas más complejos, se sugiere explorar técnicas más avanzadas y conjuntos de datos más grandes.
