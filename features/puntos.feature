# language: es
Característica: Visualizar puntos
  Para que sean visibles los puntos para los espectadores
  Como un arbitro
  Quiero ingresar los puntos de cada jugador

  Escenario: Marcador inicial 0-0
    Dado que ingreso a la pagina de inicio
    Cuando ha iniciado un juego
    Entonces debo visualizar en el marcador "0-0"

  Escenario: Jugador1 marca un punto
    Dado que ingreso a la pagina de inicio
    Cuando ha iniciado un juego
	Y jugador1 anota
    Entonces debo visualizar en el marcador "15-0"

  Escenario: Jugador2 marca un punto
    Dado que ingreso a la pagina de inicio
    Cuando ha iniciado un juego
	Y jugador2 anota
    Entonces debo visualizar en el marcador "0-15"





