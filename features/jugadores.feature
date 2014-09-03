# language: es
Característica: Visualizar jugadores
  Para que sean visibles los jugadores a los espectadores
  Como un arbitro
  Quiero definir los jugadores del partido

  Escenario: Ingresar jugadores
    Dado que ingreso a la pagina de inicio
    Y que el jugador1 es "Nadal"
	Y que el jugador2 es "Federer"
    Cuando inicio el juego
    Entonces debo visualizar en el titulo "Nadal vs Federer"

  Escenario: Ingresar otros jugadores 
    Dado que ingreso a la pagina de inicio
    Y que el jugador1 es "Daniel"
	Y que el jugador2 es "Felipe"
    Cuando inicio el juego
    Entonces debo visualizar en el titulo "Daniel vs Felipe"

  Escenario: Visualizar jugador1
    Dado que ingreso a la pagina de inicio
    Y que el jugador1 es "Daniel"
	Y que el jugador2 es "Felipe"
    Cuando inicio el juego
    Entonces debo visualizar como jugador1 "Daniel"

  Escenario: Visualizar jugador2
    Dado que ingreso a la pagina de inicio
    Y que el jugador1 es "Daniel"
	Y que el jugador2 es "Felipe"
    Cuando inicio el juego
    Entonces debo visualizar como jugador2 "Felipe"








