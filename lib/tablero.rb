class Tablero

  def initialize 
    @puntos_j1 = 0
    @puntos_j2 = 0
  end
 
  def get_puntos_jugador_1
    @puntos_j1
  end

  def get_puntos_jugador_2
    @puntos_j2	
  end


  def puntuar_jugador_1
    @puntos_j1 = puntuar_jugador @puntos_j1
  end

  def puntuar_jugador_2
    @puntos_j2 = puntuar_jugador @puntos_j2
  end 

  def puntuar_jugador puntos
    puntos = 15 + puntos
    if puntos == 45
      puntos = 40
    end
    puntos
  end

end
