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

  def punto_jugador_1
    @puntos_j1 = 15 + @puntos_j1
    if @puntos_j1 == 45
      @puntos_j1 = 40
    end
  end

  def punto_jugador_2
    @puntos_j2 = 15 + @puntos_j2
    if @puntos_j2 == 45
      @puntos_j2 = 40
    end
  end 


end
