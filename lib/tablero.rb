class Tablero

  

  def initialize 
    @puntos = [0,15,30,40]
    @index_j1 = 0
    @index_j2 = 0
  end
 
  def get_puntos_jugador_1
    @puntos[@index_j1]
  end

  def get_puntos_jugador_2
    @puntos[@index_j2]	
  end


  def puntuar_jugador_1
    @index_j1 += 1
  end

  def puntuar_jugador_2
    @index_j2 += 1
  end 
  
end
