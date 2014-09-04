class Tablero

  def initialize 
    @puntos_j1 = 0
  end
 
  def get_puntos_jugador_1
    @puntos_j1
  end

  def get_puntos_jugador_2
    0	
  end

  def punto_jugador_1
    @puntos_j1 = 15 + @puntos_j1
    if @puntos_j1 == 45
      @puntos_j1 = 40
    end
  end

end
