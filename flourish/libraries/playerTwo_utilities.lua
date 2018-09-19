
------------------------------------
-- Creates plant selection buttons.
------------------------------------
function selectionSetupP2 ()

  P2Select = display.newGroup();

  --RockSelectP2 = display.newImageRect( "images/Wood Display Select.png", 890, 1200)
  --RockSelectP2.x = display.contentCenterX-520
  --RockSelectP2.y = display.contentCenterY+750
  --P2Select:insert( RockSelectP2 )

  btn_spawnHorsetailP2 = display.newImageRect( "images/horsetail/horsegrassseedselected.png", 130, 130)
  btn_spawnHorsetailP2.x = display.contentCenterX-828
  btn_spawnHorsetailP2.y = display.contentCenterY+875
  P2Select:insert( btn_spawnHorsetailP2 )

  btn_spawnFernP2 = display.newImageRect( "images/selectbuttons/Select Fern Button.png", 130, 130)
  btn_spawnFernP2.x = display.contentCenterX-622
  btn_spawnFernP2.y = display.contentCenterY+875
  P2Select:insert( btn_spawnFernP2 )

  btn_spawnKaoriP2 = display.newImageRect( "images/kaori/kaoriseed-forestselected.png", 130, 130)
  btn_spawnKaoriP2.x = display.contentCenterX-428
  btn_spawnKaoriP2.y = display.contentCenterY+875
  P2Select:insert( btn_spawnKaoriP2 )
  toggleVisibility( btn_spawnKaoriP2 )

  btn_spawnMagnoliaP2 = display.newImageRect( "images/magnolia/magseed selected.png", 130, 130)
  btn_spawnMagnoliaP2.x = display.contentCenterX-222
  btn_spawnMagnoliaP2.y = display.contentCenterY+875
  P2Select:insert( btn_spawnMagnoliaP2 )
  toggleVisibility( btn_spawnMagnoliaP2 )

end

---------------------------------
--functions for Spawning Plants.
---------------------------------

-- Create Horsetail
function createHorsetailP2 ()  

  P2Horsetail = display.newGroup();

  Horsetail_P2 = createImage("images/horsetail/horsetailstalk 1.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2:setFillColor(0.6)
  P2Horsetail:insert( Horsetail_P2 )
  Horsetail_P2:scale(0.70, 0.70)
  --mask = graphics.newMask( "images/horsetail/horsetailstalk 1 MASK.png" )
  --Horsetail_P2:setMask( mask )

  Horsetail_P2_2 = createImage("images/horsetail/horsetailstalk 2.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_2:setFillColor(0.7)
  P2Horsetail:insert( Horsetail_P2_2 )
  Horsetail_P2_2:scale(0.70, 0.70)
  --mask2 = graphics.newMask( "images/horsetail/horsetailstalk 2 MASK.png" )
  --Horsetail_P2_2:setMask( mask2 )

  Horsetail_P2_3 = createImage("images/horsetail/horsetailstalk 3.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_3:setFillColor(0.8)
  P2Horsetail:insert( Horsetail_P2_3 )
  Horsetail_P2_3:scale(0.70, 0.70)
  --mask3 = graphics.newMask( "images/horsetail/horsetailstalk 3 MASK.png" )
  --Horsetail_P2_3:setMask( mask3 )

  Horsetail_P2_4 = createImage("images/horsetail/horsetailstalk 4.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_4:setFillColor(0.6)
  P2Horsetail:insert( Horsetail_P2_4 )
  Horsetail_P2_4:scale(0.70, 0.70)
  --mask4 = graphics.newMask( "images/horsetail/horsetailstalk 4 MASK.png" )
  --Horsetail_P2_4:setMask( mask4 )

  Horsetail_P2_5 = createImage("images/horsetail/horsetailstalk 5.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_5:setFillColor(0.7)
  P2Horsetail:insert( Horsetail_P2_5 )
  Horsetail_P2_5:scale(0.70, 0.70)
  --mask5 = graphics.newMask( "images/horsetail/horsetailstalk 5 MASK.png" )
  --Horsetail_P2_5:setMask( mask5 )

  return createHorsetailP2

end

-- Spawn Kaori
function createKaoriP2 ()

  P2Kaori = display.newGroup();

  Kaori_P2 = createImage("images/kaori/treetrunk.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2:setFillColor(0.7)
  P2Kaori:insert( Kaori_P2 )
  Kaori_P2:scale(0.60, 0.60)
  --mask = graphics.newMask( "images/kaori/treetrunkMASK.png" )
  --Kaori_P2:setMask( mask )

  Kaori_P2_2 = createImage("images/kaori/kaori-bottomleftleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_2:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_2 )
  Kaori_P2_2:scale(0.60, 0.60)
  --mask2 = graphics.newMask( "images/kaori/kaori-bottomleftleafclusterMask.png" )
  --Kaori_P2_2:setMask( mask2 )

  Kaori_P2_3 = createImage("images/kaori/kaori-bottomrightleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_3:setFillColor(0.5)
  P2Kaori:insert( Kaori_P2_3 )
  Kaori_P2_3:scale(0.60, 0.60)
  --mask3 = graphics.newMask( "images/kaori/kaori-bottomrightleafclusterMASK.png" )
  --Kaori_P2_3:setMask( mask3 )

  Kaori_P2_4 = createImage("images/kaori/kaori-smalltoprightleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_4:setFillColor(0.4)
  P2Kaori:insert( Kaori_P2_4 )
  Kaori_P2_4:scale(0.60, 0.60)
  --mask4 = graphics.newMask( "images/kaori/kaori-smalltoprightleafclusterMASK.png" )
  --Kaori_P2_4:setMask( mask4 )

  Kaori_P2_5 = createImage("images/kaori/kaori-topleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_5:setFillColor(0.7)
  P2Kaori:insert( Kaori_P2_5 )
  Kaori_P2_5:scale(0.60, 0.60)
  --mask5 = graphics.newMask( "images/kaori/kaori-topleafclusterMASK.png" )
  --Kaori_P2_5:setMask( mask5 )

  Kaori_P2_6 = createImage("images/kaori/kaori-topleftleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_6:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_6 )
  Kaori_P2_6:scale(0.60, 0.60)
  --mask6 = graphics.newMask( "images/kaori/kaori-topleftleafclusterMask.png" )
  --Kaori_P2_6:setMask( mask6 )

  Kaori_P2_7 = createImage("images/kaori/kaori-toprightleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_7:setFillColor(0.4)
  P2Kaori:insert( Kaori_P2_7 )
  Kaori_P2_7:scale(0.60, 0.60)
  --mask7 = graphics.newMask( "images/kaori/kaori-toprightleafclusterMask.png" )
  --Kaori_P2_7:setMask( mask7 )

  Kaori_P2_8 = createImage("images/kaori/kaori-verybottomleftleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_8:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_8 )
  Kaori_P2_8:scale(0.60, 0.60)
  --mask8 = graphics.newMask( "images/kaori/kaori-verybottomleftleafclusterMASK.png" )
  --Kaori_P2_8:setMask( mask8 )

  return createKaoriP2

end

-- Spawn Magnolia
function createMagnoliaP2 ()

  P2Magnolia = display.newGroup();

  Magnolia_P2 = createImage("images/magnolia/mag trunk.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2:setFillColor(0.6)
  P2Magnolia:insert( Magnolia_P2 )
  Magnolia_P2:scale(0.70, 0.70)
  mask = graphics.newMask( "images/magnolia/mag trunkMASK.png" )
  --Magnolia_P2:setMask( mask )
  --Magnolia_P2:scale(0.70, 0.70)

  Magnolia_P2_2 = createImage("images/magnolia/mag leafchunk1.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_2:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_2 )
  Magnolia_P2_2:scale(0.70, 0.70)
  --mask2 = graphics.newMask( "images/magnolia/mag leafchunk1MASK.png" )
  --Magnolia_P2_2:setMask( mask2 )

  Magnolia_P2_3 = createImage("images/magnolia/mag leafchunk2.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_3:setFillColor(0.8)
  P2Magnolia:insert( Magnolia_P2_3 )
  Magnolia_P2_3:scale(0.70, 0.70)
  --mask3 = graphics.newMask( "images/magnolia/mag leafchunk2MASK.png" )
  --Magnolia_P2_3:setMask( mask3 )

  Magnolia_P2_4 = createImage("images/magnolia/mag leafchunk3.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_4:setFillColor(0.6)
  P2Magnolia:insert( Magnolia_P2_4 )
  Magnolia_P2_4:scale(0.70, 0.70)
  --mask4 = graphics.newMask( "images/magnolia/mag leafchunk3MASK.png" )
  --Magnolia_P2_4:setMask( mask4 )

  Magnolia_P2_5 = createImage("images/magnolia/mag leafchunk4.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_5:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_5 )
  Magnolia_P2_5:scale(0.70, 0.70)
  --mask5 = graphics.newMask( "images/magnolia/mag leafchunk4MASK.png" )
  --Magnolia_P2_5:setMask( mask5 )

  Magnolia_P2_6 = createImage("images/magnolia/mag leafchunk5.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_6:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_6 )
  Magnolia_P2_6:scale(0.70, 0.70)
  --mask6 = graphics.newMask( "images/magnolia/mag leafchunk5MASK.png" )
  --Magnolia_P2_6:setMask( mask6 )

  Magnolia_P2_7 = createImage("images/magnolia/mag leafchunk6.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_7:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_7 )
  Magnolia_P2_7:scale(0.70, 0.70)
  --mask7 = graphics.newMask( "images/magnolia/mag leafchunk6MASK.png" )
  --Magnolia_P2_7:setMask( mask7 )

  return createMagnoliaP2

end

-- Spawn Fern
function createFernP2 ()

  P2Fern = display.newGroup();
  
  fern_P2 = createImage("images/plant3/plant1.png", 400, 400, display.contentCenterX-725, display.contentCenterY+1295)
  fern_P2:setFillColor(0.6)
  P2Fern:insert( fern_P2 )
  fern_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant3/fern1.png" )
  fern_P2:setMask( mask )

  fern_P2_2 = createImage("images/plant3/plant2.png", 400, 400, display.contentCenterX-725, display.contentCenterY+1295)
  fern_P2_2:setFillColor(0.7)
  P2Fern:insert( fern_P2_2 )
  fern_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant3/fern2.png" )
  fern_P2_2:setMask( mask2 )

  fern_P2_3 = createImage("images/plant3/plant3.png", 400, 400, display.contentCenterX-725, display.contentCenterY+1295)
  fern_P2_3:setFillColor(0.8)
  P2Fern:insert( fern_P2_3 )
  fern_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant3/fern3.png" )
  fern_P2_3:setMask( mask3 )

  fern_P2_4 = createImage("images/plant3/plant4.png", 400, 400, display.contentCenterX-750, display.contentCenterY+1295)
  fern_P2_4:setFillColor(0.6)
  P2Fern:insert( fern_P2_4 )
  fern_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant3/fern4.png" )
  fern_P2_4:setMask( mask4 )

  return createFernP2

end

-----------------------------------------
-- Creates colouring palette and buttons.
-----------------------------------------
function colouringSetupP2()

  P2Colouring = display.newGroup();

  local RockColourP2 = display.newImageRect( "images/Wood Display.png", 890, 1320)
  RockColourP2.x = display.contentCenterX-520
  RockColourP2.y = display.contentCenterY+1130
  P2Colouring:insert( RockColourP2 )

  -----------------------------------
  -- Creates palette option buttons
  -----------------------------------

  P2NormalSelect = display.newImageRect( "images/paintbuttons/NormalButton.png", 100, 100)
  P2NormalSelect.x = display.contentCenterX-510
  P2NormalSelect.y = display.contentCenterY+1090
  P2Colouring:insert( P2NormalSelect )

  P2RainbowSelect = display.newImageRect( "images/paintbuttons/Rainbow/RainbowButton.png", 100, 100)
  P2RainbowSelect.x = display.contentCenterX-370
  P2RainbowSelect.y = display.contentCenterY+1090
  P2Colouring:insert( P2RainbowSelect )

  --------------------------------------
  -- creates normal colour selection buttons.
  --------------------------------------
  P2normalPalette = display.newGroup();

  btn_new5 = display.newImageRect( "images/paintbuttons/paletteButton1.png", 130, 130)
  btn_new5.color = { 0.3, 0.5, 0.3 }
  btn_new5.x = display.contentCenterX-465
  btn_new5.y = display.contentCenterY+1270
  P2normalPalette:insert( btn_new5 )

  btn_new6 = display.newImageRect( "images/paintbuttons/paletteButton2.png", 130, 130)
  btn_new6.color = { 0.3, 0.5, 0.1 }
  btn_new6.x = display.contentCenterX-315
  btn_new6.y = display.contentCenterY+1245
  P2normalPalette:insert( btn_new6 )

  btn_new7 = display.newImageRect( "images/paintbuttons/paletteButton3.png", 130, 130)
  btn_new7.color = { 0.1, 0.4, 0.2 }
  btn_new7.x = display.contentCenterX-465
  btn_new7.y = display.contentCenterY+1380
  P2normalPalette:insert( btn_new7 )

  btn_new8 = display.newImageRect( "images/paintbuttons/paletteButton4.png", 130, 130)
  btn_new8.color = { 0.4, 0.2, 0.1 }
  btn_new8.x = display.contentCenterX-315
  btn_new8.y = display.contentCenterY+1370
  P2normalPalette:insert( btn_new8 )

  P2Colouring:insert( P2normalPalette )

  --------------------------------------
  -- creates rainbow colour selection buttons.
  --------------------------------------
  P2rainbowPalette = display.newGroup();

  btn_rainbow5 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton1.png", 130, 130)
  btn_rainbow5.color = { 1, 0, 0.}
  btn_rainbow5.x = display.contentCenterX-465
  btn_rainbow5.y = display.contentCenterY+1270
  P2rainbowPalette:insert( btn_rainbow5 )

  btn_rainbow6 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton2.png", 130, 130)
  btn_rainbow6.color = { 0, 0, 1 }
  btn_rainbow6.x = display.contentCenterX-315
  btn_rainbow6.y = display.contentCenterY+1245
  P2rainbowPalette:insert( btn_rainbow6 )

  btn_rainbow7 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton3.png", 130, 130)
  btn_rainbow7.color = { 0.5, 0, 0.5 }
  btn_rainbow7.x = display.contentCenterX-465
  btn_rainbow7.y = display.contentCenterY+1380
  P2rainbowPalette:insert( btn_rainbow7 )

  btn_rainbow8 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton4.png", 130, 130)
  btn_rainbow8.color = { 2, 2, 0 }
  btn_rainbow8.x = display.contentCenterX-315
  btn_rainbow8.y = display.contentCenterY+1370
  P2rainbowPalette:insert( btn_rainbow8 )

  P2Colouring:insert( P2rainbowPalette )
  toggleVisibility( P2rainbowPalette )

  ---------------------------------------------------------------------------------------------
  -- creates done buttons for when you're finished colouring, set to invisible on level start.
  ---------------------------------------------------------------------------------------------
  donebtn_spawnHorsetailP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnHorsetailP2.x = display.contentCenterX-380
  donebtn_spawnHorsetailP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnHorsetailP2 )
  P2Colouring:insert( donebtn_spawnHorsetailP2 )

  donebtn_spawnKaoriP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnKaoriP2.x = display.contentCenterX-380
  donebtn_spawnKaoriP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnKaoriP2 )
  P2Colouring:insert( donebtn_spawnKaoriP2 )

  donebtn_spawnMagnoliaP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnMagnoliaP2.x = display.contentCenterX-380
  donebtn_spawnMagnoliaP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnMagnoliaP2 )
  P2Colouring:insert( donebtn_spawnMagnoliaP2 )

  donebtn_spawnFernP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFernP2.x = display.contentCenterX-380
  donebtn_spawnFernP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFernP2 )
  P2Colouring:insert( donebtn_spawnFernP2 )

  -----------------------------------------------------------------------------------------------
  -- creates compost buttons for if you want to change plants, set to invisible on level start.
  -----------------------------------------------------------------------------------------------
  compostButtonHorsetailP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonHorsetailP2.x = display.contentCenterX-640
  compostButtonHorsetailP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonHorsetailP2 )
  P2Colouring:insert( compostButtonHorsetailP2 )

  compostButtonKaoriP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonKaoriP2.x = display.contentCenterX-640
  compostButtonKaoriP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonKaoriP2 )
  P2Colouring:insert( compostButtonKaoriP2 )

  compostButtonMagnoliaP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonMagnoliaP2.x = display.contentCenterX-640
  compostButtonMagnoliaP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonMagnoliaP2 )
  P2Colouring:insert( compostButtonMagnoliaP2 )

  compostButtonFernP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFernP2.x = display.contentCenterX-640
  compostButtonFernP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFernP2 )
  P2Colouring:insert( compostButtonFernP2 )

end

  












