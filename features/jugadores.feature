# language: es
Característica: Visualizar jugadores
  Para que sean visibles los jugadores a los espectadores
  Como un arbitro
  Quiero definir los jugadores del partido

  Escenario: Ingresar jugadores
    Dado ingreso a la pagina de inicio
    Y que el jugador1 es "Nadal"
	Y que el jugador2 es "Federer"
    Cuando inicio el juego
    Entonces debo visualizar "Nadal vs Federer"
