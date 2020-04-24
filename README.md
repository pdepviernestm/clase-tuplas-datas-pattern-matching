# clase-tuplas-datas-pattern-matching
Código de la clase sobre tuplas, datas y pattern matching

## Ejecución
para levantar el interprete con nuestro código solo levantar una consola pararse dentro del proyecto y ejecutar stack ghci
 
## Repaso de la clase
El archivo Library.hs tiene el código final de la clase con distintas partes que dejamos comentadas de como fue el proceso y aclaraciones sobre lo que fuimos hiciendo. Recordando un poco el paso a paso:

- Empezamos haciendo un repaso de que es un programa, llegamos a la idea de modelo y como nuestros programas son modelos que se pueden ejecutar

- Pasamos a ver como se modelan los distintos elementos de nuestro dominio, como los tipos primitivos (Números, Strings, Booleanos) no son prácticos para representar muchas cosas pero se quedan cortos para otras

- Aca ya introdujimos la idea de nuevos tipos un poco mas complejos: Las tuplas dentro de la idea de modelar nuestro juego de cartas donde nos interesa saber si puede ir despues una carta de otra (matcheando por palo o por valor)

- Hablamos sobre Pattern matching  como una herramienta para deconstruir estructuras de datos y poder acceder a sus diversos componentes.

- Llegamos a la idea de que la tupla se nos queda un poco corta porque no nos permite restringir demasiado el uso de nuestras funciones para cartas (un jugador representado por un número y un nombre `(45, "feche")`) puede ser usado en nuestras funciones para cartas  porque el tipo `Carta` solo es un alias para el tipo `(Number, String)`.

- Aca aparecen los `datas` como formas para crear un tipo nuevo (ya no es un alias de un tipo existente) para solucionar el problema anterior.

- Vimos como las abstracciones en problemas mas chicos nos permitieron refactorizar (cambiar el código de nuestra solución sin cambiar la funcionalidad) nuestro código sin tener que toquetear en demasiados lugares lo que ya teniamos.

- Vimos como usar constructores para modelar los `Palos` y dejar de usar `Strings` lo que nos da la ventaja sobre los posibles valores que puede tomar el elemento `palo` de nuestro tipo de dato `Carta`.

- Hablamos un poco sobre diseño y el equilibrio que tenemos de buscar (Modelamos los 12 posibles valores como un tipo nuevo o aceptamos dejarlos como Números con el costo que este conlleva). 

- Introdujimos finalmente el comodin como otra Carta mas, vimos como el Pattern Matching nos sirve para establecer distintas definiciones para una misma función cada una para un patron distinto. 

notas:
- Hablamos cross a toda la clase sobre inferencia de tipos y como haskell infiere solo (y mucho mejor que nosotros) el tipo de nuestras funciones a partir de como las definimos. Pero tambien podemos restringir el tipo de una función para que pueda ser usada con menos valores posibles que los que haskell puede inferir.
- Nombramos lo que es una type class `(Show, Eq)` y porque es necesario a veces usar un `deriving` para nuestros tipos de datos nuevos. (más adelante vamos a meternos un poco mas en el tema)

##Link al video de la clase
https://drive.google.com/file/d/1t_JGMq47zeUBd1nUfY_eJun--Xc7s45d/view