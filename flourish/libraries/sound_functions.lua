function clicksound ()
  local Clickselect = audio.loadSound( "sounds/buttons/Click Sound.mp3" )

  local Clickselectchannel = audio.play( Clickselect, { channel=3, loops=0 } )
end

function donesound ()
  local Clickdone = audio.loadSound( "sounds/buttons/Done Plant.mp3" )

  local Clickdonechannel = audio.play( Clickdone, { channel=4, loops=0 } )
end

function eatnoise ()
  local Dinoeatsound = audio.loadSound( "sounds/Iguanodon/Eating.mp3" )

  local Dinoeatsoundchannel = audio.play( Dinoeatsound, { channel=5, loops=0 } )
end
