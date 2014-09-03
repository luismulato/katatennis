Given(/^ingreso a la pagina de inicio$/) do
  visit '/'
end

Then(/^deseo ver el titulo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^deseo ver el titulo en el navegador "(.*?)"$/) do |arg1|
  last_response.body.should =~ /<title>#{arg1}<\/title>/m
end

Dado(/^que ingreso a la pagina de inicio$/) do
  visit '/'
end

Dado(/^que el jugador(\d+) es "(.*?)"$/) do |arg1, arg2|
  fill_in("jugador"+arg1, :with => arg2)
end

Cuando(/^inicio el juego$/) do
  click_button("jugar")
end

Entonces(/^debo visualizar en el titulo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /<title>#{arg1}<\/title>/m
end

Entonces(/^debo visualizar como jugador(\d+) "(.*?)"$/) do |arg1, arg2|
  last_response.body.should =~ /<div data-name="jugador#{arg1}-#{arg2}"/m
end

Cuando(/^ha iniciado un juego$/) do
  fill_in("jugador1", :with => "Nadal")
  fill_in("jugador2", :with => "Federer")
  click_button("jugar")
end

Entonces(/^debo visualizar en el marcador "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Cuando(/^jugador(\d+) anota$/) do |arg1|
  click_link("jugador"+arg1)
end















