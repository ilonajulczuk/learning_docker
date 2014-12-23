require "open-uri"

File.open('bellpepper.png', 'wb') do |fo|
  fo.write open("http://www.tastefulgarden.com/store/pc/catalog/socrates2_801_general.jpg").read 
end
