require './lib/tablero'

describe Tablero do

  it "validar marcador inicial 0-0" do    
	#Arrange
	tablero = Tablero.new
	#Act
	puntos = tablero.get_puntos_jugador_1
	#Assert
	puntos.should == 0

  end

end

