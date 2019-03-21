require_relative('../models/house.rb')

  gryffindor = House.new({
  'name' => 'Gryffindor',
  'logo_url' => 'https://commons.wikimedia.org/wiki/Category:Gryffindor#/media/File:Blason_Gryffondor.svg'
  })
  ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'logo_url' => 'https://commons.wikimedia.org/wiki/Category:Ravenclaw#/media/File:Blason_Serdaigle.svg'
  })
  hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'logo_url' => 'https://commons.wikimedia.org/wiki/Category:Hufflepuff#/media/File:Coat_of_arms_Hufflepuff.svg'
  })
  slytherin = House.new({
  'name' => 'Slytherin',
  'logo_url' => 'https://commons.wikimedia.org/wiki/Category:Slytherin#/media/File:Blason_Serpentard.svg'
  })

gryffindor.save
ravenclaw.save
hufflepuff.save
slytherin.save
