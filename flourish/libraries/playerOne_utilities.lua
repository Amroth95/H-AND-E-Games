
------------------------------------
-- Creates plant selection buttons.
------------------------------------
function selectionSetupP1 ()

  P1Select = display.newGroup();

  RockSelectP1 = display.newImageRect( "images/Wood Display Select.png", 890, 1200)
  RockSelectP1.x = display.contentCenterX-1440
  RockSelectP1.y = display.contentCenterY+750
  P1Select:insert( RockSelectP1 )

  btn_spawnFlaxP1 = display.newImageRect( "images/selectbuttons/Select Flax Button.png", 130, 130)
  btn_spawnFlaxP1.x = display.contentCenterX-1732
  btn_spawnFlaxP1.y = display.contentCenterY+875
  P1Select:insert( btn_spawnFlaxP1 )

  btn_spawnPalmP1 = display.newImageRect( "images/selectbuttons/Select Palm Button.png", 130, 130)
  btn_spawnPalmP1.x = display.contentCenterX-1538
  btn_spawnPalmP1.y = display.contentCenterY+875
  P1Select:insert( btn_spawnPalmP1 )
  toggleVisibility( btn_spawnPalmP1 )

  btn_spawnPineP1 = display.newImageRect( "images/selectbuttons/Select Pine Button.png", 130, 130)
  btn_spawnPineP1.x = display.contentCenterX-1342
  btn_spawnPineP1.y = display.contentCenterY+875
  P1Select:insert( btn_spawnPineP1 )
  toggleVisibility( btn_spawnPineP1 )

  btn_spawnFernP1 = display.newImageRect( "images/selectbuttons/Select Fern Button.png", 130, 130)
  btn_spawnFernP1.x = display.contentCenterX-1148
  btn_spawnFernP1.y = display.contentCenterY+875
  P1Select:insert( btn_spawnFernP1 )

end

---------------------------------
--functions for Spawning Plants.
---------------------------------
function createFlaxP1 ()  

  P1Flax = display.newGroup();

  flax_P1 = createImage("images/plant1/plant1.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1:setFillColor(0.6)
  P1Flax:insert( flax_P1 )
  flax_P1:scale(0.70, 0.70)
  mask = graphics.newMask( "images/plant1/flax1.png" )
  flax_P1:setMask( mask )

  flax_P1_2 = createImage("images/plant1/plant2.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1_2:setFillColor(0.7)
  P1Flax:insert( flax_P1_2 )
  flax_P1_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/plant1/flax2.png" )
  flax_P1_2:setMask( mask2 )

  flax_P1_3 = createImage("images/plant1/plant3.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1_3:setFillColor(0.8)
  P1Flax:insert( flax_P1_3 )
  flax_P1_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/plant1/flax3.png" )
  flax_P1_3:setMask( mask3 )

  flax_P1_4 = createImage("images/plant1/plant4.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1_4:setFillColor(0.6)
  P1Flax:insert( flax_P1_4 )
  flax_P1_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/plant1/flax4.png" )
  flax_P1_4:setMask( mask4 )

  flax_P1_5 = createImage("images/plant1/plant5.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1_5:setFillColor(0.7)
  P1Flax:insert( flax_P1_5 )
  flax_P1_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/plant1/flax5.png" )
  flax_P1_5:setMask( mask5 )

  flax_P1_6 = createImage("images/plant1/plant6.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1_6:setFillColor(0.7)
  P1Flax:insert( flax_P1_6 )
  flax_P1_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/plant1/flax6.png" )
  flax_P1_6:setMask( mask6 )

  return createFlaxP1

end

-- Spawn Palm
function createPalmP1 ()

  P1Palm = display.newGroup();

  palm_P1 = createImage("images/plant2/plant3.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1:setFillColor(0.7)
  P1Palm:insert( palm_P1 )
  palm_P1:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant2/palm3.png" )
  palm_P1:setMask( mask )

  palm_P1_2 = createImage("images/plant2/plant2.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_2:setFillColor(0.6)
  P1Palm:insert( palm_P1_2 )
  palm_P1_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant2/palm2.png" )
  palm_P1_2:setMask( mask2 )

  palm_P1_3 = createImage("images/plant2/plant1.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_3:setFillColor(0.5)
  P1Palm:insert( palm_P1_3 )
  palm_P1_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant2/palm1.png" )
  palm_P1_3:setMask( mask3 )

  return createPalmP1

end

-- Spawn Pine
function createPineP1 ()

  P1Pine = display.newGroup();

  pine_P1 = createImage("images/plant4/plant1.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1:setFillColor(0.6)
  P1Pine:insert( pine_P1 )
  pine_P1:scale(0.35, 0.35)
  mask = graphics.newMask( "images/plant4/pine1.png" )
  pine_P1:setMask( mask )

  pine_P1_2 = createImage("images/plant4/plant2.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1_2:setFillColor(0.7)
  P1Pine:insert( pine_P1_2 )
  pine_P1_2:scale(0.35, 0.35)
  mask2 = graphics.newMask( "images/plant4/pine2.png" )
  pine_P1_2:setMask( mask2 )

  pine_P1_3 = createImage("images/plant4/plant3.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1_3:setFillColor(0.8)
  P1Pine:insert( pine_P1_3 )
  pine_P1_3:scale(0.35, 0.35)
  mask3 = graphics.newMask( "images/plant4/pine3.png" )
  pine_P1_3:setMask( mask3 )

  pine_P1_4 = createImage("images/plant4/plant4.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1_4:setFillColor(0.6)
  P1Pine:insert( pine_P1_4 )
  pine_P1_4:scale(0.35, 0.35)
  mask4 = graphics.newMask( "images/plant4/pine4.png" )
  pine_P1_4:setMask( mask4 )

  pine_P1_5 = createImage("images/plant4/plant5.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1_5:setFillColor(0.7)
  P1Pine:insert( pine_P1_5 )
  pine_P1_5:scale(0.35, 0.35)
  mask5 = graphics.newMask( "images/plant4/pine5.png" )
  pine_P1_5:setMask( mask5 )

  pine_P1_6 = createImage("images/plant4/plant6.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1_6:setFillColor(0.7)
  P1Pine:insert( pine_P1_6 )
  pine_P1_6:scale(0.35, 0.35)
  mask6 = graphics.newMask( "images/plant4/pine6.png" )
  pine_P1_6:setMask( mask6 )

  pine_P1_7 = createImage("images/plant4/plant7.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1195)
  pine_P1_7:setFillColor(0.7)
  P1Pine:insert( pine_P1_7 )
  pine_P1_7:scale(0.35, 0.35)
  mask7 = graphics.newMask( "images/plant4/pine7.png" )
  pine_P1_7:setMask( mask7 )

  return createPineP1

end

-- Spawn Fern
function createFernP1 ()

  P1Fern = display.newGroup();
  
  fern_P1 = createImage("images/plant3/plant1.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  fern_P1:setFillColor(0.6)
  P1Fern:insert( fern_P1 )
  fern_P1:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant3/fern1.png" )
  fern_P1:setMask( mask )

  fern_P1_2 = createImage("images/plant3/plant2.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  fern_P1_2:setFillColor(0.7)
  P1Fern:insert( fern_P1_2 )
  fern_P1_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant3/fern2.png" )
  fern_P1_2:setMask( mask2 )

  fern_P1_3 = createImage("images/plant3/plant3.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  fern_P1_3:setFillColor(0.8)
  P1Fern:insert( fern_P1_3 )
  fern_P1_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant3/fern3.png" )
  fern_P1_3:setMask( mask3 )

  fern_P1_4 = createImage("images/plant3/plant4.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  fern_P1_4:setFillColor(0.6)
  P1Fern:insert( fern_P1_4 )
  fern_P1_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant3/fern4.png" )
  fern_P1_4:setMask( mask4 )

  return createFernP1

end

-----------------------------------------
-- Creates colouring palette and buttons.
-----------------------------------------
function colouringSetupP1()

  P1Colouring = display.newGroup();

  local RockColourP1 = display.newImageRect( "images/Wood Display.png", 890, 1320)
  RockColourP1.x = display.contentCenterX-1440
  RockColourP1.y = display.contentCenterY+1130
  P1Colouring:insert( RockColourP1 )

  -----------------------------------
  -- Creates palette option buttons
  -----------------------------------

  P1NormalSelect = display.newImageRect( "images/paintbuttons/paletteButton1.png", 100, 100)
  P1NormalSelect.x = display.contentCenterX-1330
  P1NormalSelect.y = display.contentCenterY+1070
  P1Colouring:insert( P1NormalSelect )

  P1RainbowSelect = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton2.png", 100, 100)
  P1RainbowSelect.x = display.contentCenterX-1230
  P1RainbowSelect.y = display.contentCenterY+1070
  P1Colouring:insert( P1RainbowSelect )

  --------------------------------------
  -- creates normal colour selection buttons.
  --------------------------------------
  P1normalPalette = display.newGroup();

  btn_new1 = display.newImageRect( "images/paintbuttons/paletteButton1.png", 130, 130)
  btn_new1.color = { 0.3, 0.5, 0.3 }
  btn_new1.x = display.contentCenterX-1380
  btn_new1.y = display.contentCenterY+1270
  P1normalPalette:insert( btn_new1 )

  btn_new2 = display.newImageRect( "images/paintbuttons/paletteButton2.png", 130, 130)
  btn_new2.color = { 0.3, 0.5, 0.1 }
  btn_new2.x = display.contentCenterX-1230
  btn_new2.y = display.contentCenterY+1245
  P1normalPalette:insert( btn_new2 )

  btn_new3 = display.newImageRect( "images/paintbuttons/paletteButton3.png", 130, 130)
  btn_new3.color = { 0.1, 0.4, 0.2 }
  btn_new3.x = display.contentCenterX-1380
  btn_new3.y = display.contentCenterY+1380
  P1normalPalette:insert( btn_new3 )

  btn_new4 = display.newImageRect( "images/paintbuttons/paletteButton4.png", 130, 130)
  btn_new4.color = { 0.4, 0.2, 0.1 }
  btn_new4.x = display.contentCenterX-1230
  btn_new4.y = display.contentCenterY+1370
  P1normalPalette:insert( btn_new4 )

  P1Colouring:insert( P1normalPalette )

  --------------------------------------
  -- creates rainbow colour selection buttons.
  --------------------------------------
  P1rainbowPalette = display.newGroup();

  btn_rainbow1 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton1.png", 130, 130)
  btn_rainbow1.color = { 1, 0, 0.}
  btn_rainbow1.x = display.contentCenterX-1380
  btn_rainbow1.y = display.contentCenterY+1270
  P1rainbowPalette:insert( btn_rainbow1 )

  btn_rainbow2 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton2.png", 130, 130)
  btn_rainbow2.color = { 0, 0, 1 }
  btn_rainbow2.x = display.contentCenterX-1230
  btn_rainbow2.y = display.contentCenterY+1245
  P1rainbowPalette:insert( btn_rainbow2 )

  btn_rainbow3 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton3.png", 130, 130)
  btn_rainbow3.color = { 0.5, 0, 0.5 }
  btn_rainbow3.x = display.contentCenterX-1380
  btn_rainbow3.y = display.contentCenterY+1380
  P1rainbowPalette:insert( btn_rainbow3 )

  btn_rainbow4 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton4.png", 130, 130)
  btn_rainbow4.color = { 2, 2, 0 }
  btn_rainbow4.x = display.contentCenterX-1230
  btn_rainbow4.y = display.contentCenterY+1370
  P1rainbowPalette:insert( btn_rainbow4 )

  P1Colouring:insert( P1rainbowPalette )
  toggleVisibility( P1rainbowPalette )

  ---------------------------------------------------------------------------------------------
  -- creates done buttons for when you're finished colouring, set to invisible on level start.
  ---------------------------------------------------------------------------------------------
  donebtn_spawnFlaxP1 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFlaxP1.x = display.contentCenterX-1300
  donebtn_spawnFlaxP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFlaxP1 )
  P1Colouring:insert( donebtn_spawnFlaxP1 )

  donebtn_spawnPalmP1 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnPalmP1.x = display.contentCenterX-1300
  donebtn_spawnPalmP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPalmP1 )
  P1Colouring:insert( donebtn_spawnPalmP1 )

  donebtn_spawnPineP1 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnPineP1.x = display.contentCenterX-1300
  donebtn_spawnPineP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPineP1 )
  P1Colouring:insert( donebtn_spawnPineP1 )

  donebtn_spawnFernP1 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFernP1.x = display.contentCenterX-1300
  donebtn_spawnFernP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFernP1 )
  P1Colouring:insert( donebtn_spawnFernP1 )

  -----------------------------------------------------------------------------------------------
  -- creates compost buttons for if you want to change plants, set to invisible on level start.
  -----------------------------------------------------------------------------------------------
  compostButtonFlaxP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFlaxP1.x = display.contentCenterX-1560
  compostButtonFlaxP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFlaxP1 )
  P1Colouring:insert( compostButtonFlaxP1 )

  compostButtonPalmP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPalmP1.x = display.contentCenterX-1560
  compostButtonPalmP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPalmP1 )
  P1Colouring:insert( compostButtonPalmP1 )

  compostButtonPineP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPineP1.x = display.contentCenterX-1560
  compostButtonPineP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPineP1 )
  P1Colouring:insert( compostButtonPineP1 )

  compostButtonFernP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFernP1.x = display.contentCenterX-1560
  compostButtonFernP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFernP1 )
  P1Colouring:insert( compostButtonFernP1 )

end

  












