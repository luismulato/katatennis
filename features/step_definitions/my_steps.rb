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

Entonces(/^debo visualizar "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end





