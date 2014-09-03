
Given(/^ingreso a la pagina de inicio$/) do
  visit '/'
end

Then(/^deseo ver el titulo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^deseo ver el titulo en el navegador "(.*?)"$/) do |arg1|
  last_response.body.should =~ /<title>#{arg1}<\/title>/m
end

