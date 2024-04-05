<div align = "center">
  
# REDES

</div>

# FUNCIONAMIENTO DE LA RED

## 1. Conexiones

### ¿Cómo viajan las conexiones?

1. Transductor de entrada

> 

2. Emisor

3. CANAL

4. Receptor
  
5. Transductor de salida

</div>

### Tipos de conexiones:

Guiada (Alámbrica):
  
> Eléctrico
  
> Óptico

> Par Trenzado 
    
No guiada (Inalámbrica)

> Bluethoot

> Wifi

> [a](#croqueta)

## 2. Capas OSI

### Características:

- 7 capas independientes

- Clasistas/Racistas/Machistas/Xenófobos ( Sólo hablan con sus iguales )

### Capas:

1. Física
  
> Recibe los datos y los pasa a la capa superior

2. Enlace

> Recibe el mensaje y lo manda directamente al que lo debe recibir  [ LLC ] |  Ordena los mensajes para que no se "superpongan", para que no "hablen" todos a la vez, sino por turnos [ MAC (Middle Acces Contorl) ]

3. Red

> Intentará mediante todos los medios que el mensaje llegue a la siguiente capa; busca el mejor camino a través de la Red.

4. Transporte

> Supervisa que los mensajes lleguen a la capa de red, y si no lo hacen, los solicita de nuevo | "Corta" el paquete en pequeños paquetitos, que luego serán juntados de nuevo en el paquete por la capa Transporte del destino

5. Sesión

> Verifica que el destino está activo/en linea

6. Presentación

> Codifica los mensajes, se encarga de ver en qué formato van los archivos, el lenguaje de codificación (UTF-8, etc.), etc.

7. Aplicación

## 3. CLASIFICACIÓN DE REDES

### ¿Para qué? Para saber cómo montarlas, organizarlas, etc.

 **W** ( Wireless [ Puede estar o no ] ) + **X** ( Letra de clasificación ) + **AN** ( Area Network )

- BAN (Body)

- CAN:

  -  Campos

  -  Controller

- HAN (Home)

- LAN (Local)

- MAN (Metropolitan)

- NAN (Near me)

- PAN (Personal)

- SAN (Storage)

- WAN (Wide)

## 4. TOPOLOGÍA DE LA RED:

### 4.1 TOPOLOGÍA FÍSICA:

- #### MODELO BUS

- #### MODELO ANILLO

  - ##### ANILLO SIMPLE
 
  - #### DOBLE ANILLO
 
- #### TIPO ESTRELLA ( SE USA AHORA )

- #### TIPO ÁRBOL

- #### TIPO MALLA

<div align = "center">

<img src="https://i.ytimg.com/vi/N26ocF-x9lo/hqdefault.jpg">

</div>

### 4.2 TOPOLOGÍA LÓGICA:

Es el sistema operativo el que se debe adaptar a los protocolos de la red, dado que estos están diseñados de forma que son iguales en todo el mundo.

## 5. CANAL / ONDAS <a name="croqueta"></a>

### 5.1 Posibles complicaciones:

1. Ruido

 ```
   Están clasificados por colores, muy similar al espectro, siendo el ruido rosa el más agudo y el marrón el más grave.
```

  > Para solucionarlo, el ruido que queremos emitir debe ser más fuerte que el que se genera.

2. Atenuación

 ```
La señal va perdiendo intensidad
```

3. Distorción

### 5.2 Modulaciones:

1. AM

```
Cambiar la amplitud (Tamaño de la ola)
```

2. FM

```
Cambiar la freceuncia
```

3. PM

```
"Cambiar si sube o baja"
```

## SIGLAS Y DEFINICIONES:
  
TCP/IP --> "une" Internet (Compueto por muchas redes pequeñas unidas entre sí)
Bits --> Datos a nivel físico
Transductor de entrada --> Convierte cualquier fenómeno físico que se quiera transmitir en electricidad.
Transmisor --> Prepara dicha electricidad para que pueda viajar por el cable. **corregir


