require_relative('../models/house.rb')

  gryffindor = House.new({
  'name' => 'Gryffindor',
  'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Blason_Gryffondor.svg/200px-Blason_Gryffondor.svg.png'
  })
  ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Blason_Serdaigle.svg/200px-Blason_Serdaigle.svg.png'
  })
  hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Coat_of_arms_Hufflepuff.svg/200px-Coat_of_arms_Hufflepuff.svg.png'
  })
  slytherin = House.new({
  'name' => 'Slytherin',
  'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Blason_Serpentard.svg/200px-Blason_Serpentard.svg.png'
  })

gryffindor.save
ravenclaw.save
hufflepuff.save
slytherin.save
