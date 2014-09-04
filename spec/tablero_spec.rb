require './lib/tablero'

describe Tablero do

  before { 
    @tablero = Tablero.new
  }

  it "validar marcador inicial 0-0" do    
	  # Arrange
    tablero = Tablero.new
	  # Act
	  puntos = tablero.get_puntos_jugador_1
	  # Assert
	  puntos.should == 0
  end

  it "validar marcador inicial 0-0" do    
    @tablero.get_puntos_jugador_1.should == 0
	  @tablero.get_puntos_jugador_2.should == 0
  end

  it "Marcar un punto jugador1" do
    @tablero.puntuar_jugador_1
	  @tablero.get_puntos_jugador_1.should == 15
  end

  it "Marcar dos puntos jugador1" do
    @tablero.puntuar_jugador_1
    @tablero.puntuar_jugador_1
	  @tablero.get_puntos_jugador_1.should == 30
  end

  it "Marcar tres puntos jugador1" do
    @tablero.puntuar_jugador_1
    @tablero.puntuar_jugador_1
    @tablero.puntuar_jugador_1
	  @tablero.get_puntos_jugador_1.should == 40
  end

  it "partido va 0-0, punto jugador2 es igual a 15" do
    @tablero.puntuar_jugador_2
    @tablero.get_puntos_jugador_2.should == 15
  end

  it "partido va 0-0, punto jugador2 marca 3 puntos" do
    @tablero.puntuar_jugador_2
    @tablero.puntuar_jugador_2
    @tablero.puntuar_jugador_2
    @tablero.get_puntos_jugador_2.should == 40
  end

  it "partido va 15-0, punto jugador2 marcador 15-15" do
    @tablero.puntuar_jugador_1

    @tablero.puntuar_jugador_2

    @tablero.get_puntos_jugador_1 == 15
    @tablero.get_puntos_jugador_2 == 15
  end
  it "partido va 15-15, punto jugador2 marcador 15-30" 
  it "partido va 0-15, punto jugador1 marcador 15-15" 
  it "partido va 15-15, punto jugador1 marcador 30-15" 
  it "partido va 30-15, punto jugador1 marcador 40-15" 
  it "partido va 40-15, punto jugador1 marcador 0-0" 
  it "partido va 15-30, punto jugador2 marcador 15-40" 
  it "partido va 15-40, punto jugador2 marcador 0-0" 
  #mock
  it "partido va 30-40, punto jugador2 marcador 0-0" 
  # caso especial
  it "partido va 40-40, punto jugador2 marcador _-A" 
  it "partido va _-A, punto jugador2 marcador 40-40" 
  it "partido va 40-40, punto jugador1 marcador A-_" 
  it "partido va A-_, punto jugador1 marcador 0-0" 
end

