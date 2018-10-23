
------------------------------------
-- Creates plant selection buttons.
------------------------------------
function selectionSetupP1 ()

  P1Select = display.newGroup();

  -- Small Plant Buttons
  btn_spawnFlaxP1 = display.newImageRect( "images/plant1/flax seed.png", 900, 749)
  btn_spawnFlaxP1.x = display.contentCenterX-1440
  btn_spawnFlaxP1.y = display.contentCenterY+1500
  P1selectmask1 = graphics.newMask( "images/plant1/flax seed Mask.png" )
  btn_spawnFlaxP1:setMask( P1selectmask1 )
  P1Select:insert( btn_spawnFlaxP1 )

  btn_outlineFlaxP1 = display.newImageRect( "images/plant1/flax seed outline.png", 900, 749)
  btn_outlineFlaxP1.x = display.contentCenterX-1440
  btn_outlineFlaxP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineFlaxP1 )

  btn_spawnFernP1 = display.newImageRect( "images/plant3/fern spore.png", 900, 749)
  btn_spawnFernP1.x = display.contentCenterX-1440
  btn_spawnFernP1.y = display.contentCenterY+1500
  P1selectmask2 = graphics.newMask( "images/plant3/fern spore Mask.png" )
  btn_spawnFernP1:setMask( P1selectmask2 )
  P1Select:insert( btn_spawnFernP1 )

  btn_outlineFernP1 = display.newImageRect( "images/plant3/fern spore outline.png", 900, 749)
  btn_outlineFernP1.x = display.contentCenterX-1440
  btn_outlineFernP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineFernP1 )

  btn_spawnHorsetailP1 = display.newImageRect( "images/horsetail/horsegrassseed.png", 900, 749)
  btn_spawnHorsetailP1.x = display.contentCenterX-1440
  btn_spawnHorsetailP1.y = display.contentCenterY+1500
  P1selectmask3 = graphics.newMask( "images/horsetail/horsegrassseed Mask.png" )
  btn_spawnHorsetailP1:setMask( P1selectmask3 )
  P1Select:insert( btn_spawnHorsetailP1 )

  btn_outlineHorsetailP1 = display.newImageRect( "images/horsetail/horsegrassseed outline.png", 900, 749)
  btn_outlineHorsetailP1.x = display.contentCenterX-1440
  btn_outlineHorsetailP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineHorsetailP1 )

  -- Meduim Plant Buttons
  P1MediumPlants = display.newGroup();

  btn_spawnPalmP1 = display.newImageRect( "images/plant2/palm seed.png", 900, 749)
  btn_spawnPalmP1.x = display.contentCenterX-1440
  btn_spawnPalmP1.y = display.contentCenterY+1500
  P1selectmask4 = graphics.newMask( "images/plant2/palm seed Mask.png" )
  btn_spawnPalmP1:setMask( P1selectmask4 )
  P1MediumPlants:insert( btn_spawnPalmP1 )

  btn_outlinePalmP1 = display.newImageRect( "images/plant2/palm seed outline.png", 900, 749)
  btn_outlinePalmP1.x = display.contentCenterX-1440
  btn_outlinePalmP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlinePalmP1 )

  btn_spawnCycadP1 = display.newImageRect( "images/cycad/cycad seed.png", 900, 749)
  btn_spawnCycadP1.x = display.contentCenterX-1440
  btn_spawnCycadP1.y = display.contentCenterY+1500
  P1selectmask5 = graphics.newMask( "images/cycad/cycad seed Mask.png" )
  btn_spawnCycadP1:setMask( P1selectmask5 )
  P1MediumPlants:insert( btn_spawnCycadP1 )

  btn_outlineCycadP1 = display.newImageRect( "images/cycad/cycad seed outline.png", 900, 749)
  btn_outlineCycadP1.x = display.contentCenterX-1440
  btn_outlineCycadP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineCycadP1 )

  btn_spawnTreeFernP1 = display.newImageRect( "images/tree fern/tree fern spores.png", 900, 749)
  btn_spawnTreeFernP1.x = display.contentCenterX-1440
  btn_spawnTreeFernP1.y = display.contentCenterY+1500
  P1selectmask6 = graphics.newMask( "images/tree fern/tree fern spores Mask.png" )
  btn_spawnTreeFernP1:setMask( P1selectmask6 )
  P1MediumPlants:insert( btn_spawnTreeFernP1 )

  btn_outlineTreeFernP1 = display.newImageRect( "images/tree fern/tree fern spores outline.png", 900, 749)
  btn_outlineTreeFernP1.x = display.contentCenterX-1440
  btn_outlineTreeFernP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineTreeFernP1 )

  P1Select:insert( P1MediumPlants )
  toggleVisibility( P1MediumPlants )

  -- Large Plant Buttons
  P1LargePlants = display.newGroup();

  btn_spawnPineP1 = display.newImageRect( "images/plant4/pine seed deselected.png", 900, 749)
  btn_spawnPineP1.x = display.contentCenterX-1440
  btn_spawnPineP1.y = display.contentCenterY+1500
  P1selectmask7 = graphics.newMask( "images/plant4/pine seed deselected Mask.png" )
  btn_spawnPineP1:setMask( P1selectmask7 )
  P1LargePlants:insert( btn_spawnPineP1 )

  btn_outlinePineP1 = display.newImageRect( "images/plant4/pine seed deselected outline.png", 900, 749)
  btn_outlinePineP1.x = display.contentCenterX-1440
  btn_outlinePineP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlinePineP1 )

  btn_spawnKaoriP1 = display.newImageRect( "images/kaori/kaoriseed-forest.png", 900, 749)
  btn_spawnKaoriP1.x = display.contentCenterX-1440
  btn_spawnKaoriP1.y = display.contentCenterY+1500
  P1selectmask8 = graphics.newMask( "images/kaori/kaoriseed-forest Mask.png" )
  btn_spawnKaoriP1:setMask( P1selectmask8 )
  P1LargePlants:insert( btn_spawnKaoriP1 )

  btn_outlineKaoriP1 = display.newImageRect( "images/kaori/kaoriseed-forest outline.png", 900, 749)
  btn_outlineKaoriP1.x = display.contentCenterX-1440
  btn_outlineKaoriP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineKaoriP1 )

  btn_spawnMagnoliaP1 = display.newImageRect( "images/magnolia/magseed.png", 900, 749)
  btn_spawnMagnoliaP1.x = display.contentCenterX-1440
  btn_spawnMagnoliaP1.y = display.contentCenterY+1500
  P1selectmask9 = graphics.newMask( "images/magnolia/magseed Mask.png" )
  btn_spawnMagnoliaP1:setMask( P1selectmask9 )
  P1LargePlants:insert( btn_spawnMagnoliaP1 )

  btn_outlineMagnoliaP1 = display.newImageRect( "images/magnolia/magseed outline.png", 900, 749)
  btn_outlineMagnoliaP1.x = display.contentCenterX-1440
  btn_outlineMagnoliaP1.y = display.contentCenterY+1500
  P1Select:insert( btn_outlineMagnoliaP1 )

  P1Select:insert( P1LargePlants )
  toggleVisibility( P1LargePlants )
  P1Select:scale( 1., 0.74 )
end

---------------------------------
-- functions for Spawning Plants.
---------------------------------

-----------------
-- Small Plants
-----------------

-- Spawn Flax
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

  flax_P1_7 = createImage("images/plant1/plant7.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  flax_P1_7:setFillColor(0.7)
  P1Flax:insert( flax_P1_7 )
  flax_P1_7:scale(0.70, 0.70)
  mask7 = graphics.newMask( "images/plant1/flax7.png" )
  flax_P1_7:setMask( mask7 )

  flax_P1_Text = display.newText( "Flax",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Flax:insert( flax_P1_Text )
  
  return createFlaxP1

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

  fern_P1_5 = createImage("images/plant3/plant5.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  fern_P1_5:setFillColor(0.6)
  P1Fern:insert( fern_P1_5 )
  fern_P1_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/plant3/fern5.png" )
  fern_P1_5:setMask( mask5 )

  fern_P1_Text = display.newText( "Fern",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Fern:insert( fern_P1_Text )

  return createFernP1

end

-- Create Horsetail
function createHorsetailP1 ()  

  P1Horsetail = display.newGroup();

  Horsetail_P1 = createImage("images/horsetail/horsetailstalk 1.png", 400, 700, display.contentCenterX-1650, display.contentCenterY+1265)
  Horsetail_P1:setFillColor(0.6)
  P1Horsetail:insert( Horsetail_P1 )
  Horsetail_P1:scale(0.70, 0.70)
  mask = graphics.newMask( "images/horsetail/horsetailstalk 1 MASK.png" )
  Horsetail_P1:setMask( mask )

  Horsetail_P1_2 = createImage("images/horsetail/horsetailstalk 2.png", 400, 700, display.contentCenterX-1650, display.contentCenterY+1265)
  Horsetail_P1_2:setFillColor(0.7)
  P1Horsetail:insert( Horsetail_P1_2 )
  Horsetail_P1_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/horsetail/horsetailstalk 2 MASK.png" )
  Horsetail_P1_2:setMask( mask2 )

  Horsetail_P1_3 = createImage("images/horsetail/horsetailstalk 3.png", 400, 700, display.contentCenterX-1650, display.contentCenterY+1265)
  Horsetail_P1_3:setFillColor(0.8)
  P1Horsetail:insert( Horsetail_P1_3 )
  Horsetail_P1_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/horsetail/horsetailstalk 3 MASK.png" )
  Horsetail_P1_3:setMask( mask3 )

  Horsetail_P1_4 = createImage("images/horsetail/horsetailstalk 4.png", 400, 700, display.contentCenterX-1650, display.contentCenterY+1265)
  Horsetail_P1_4:setFillColor(0.6)
  P1Horsetail:insert( Horsetail_P1_4 )
  Horsetail_P1_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/horsetail/horsetailstalk 4 MASK.png" )
  Horsetail_P1_4:setMask( mask4 )

  Horsetail_P1_5 = createImage("images/horsetail/horsetailstalk 5.png", 400, 700, display.contentCenterX-1650, display.contentCenterY+1265)
  Horsetail_P1_5:setFillColor(0.7)
  P1Horsetail:insert( Horsetail_P1_5 )
  Horsetail_P1_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/horsetail/horsetailstalk 5 MASK.png" )
  Horsetail_P1_5:setMask( mask5 )

  Horsetail_P1_Text = display.newText( "Horsetail",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Horsetail:insert( Horsetail_P1_Text )

  return createHorsetailP1

end

------------------
-- Medium Plants
------------------

-- Spawn Palm
function createPalmP1 ()

  P1Palm = display.newGroup();

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

  palm_P1_4 = createImage("images/plant2/plant10.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_4:setFillColor(0.6)
  P1Palm:insert( palm_P1_4 )
  palm_P1_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant2/palm10.png" )
  palm_P1_4:setMask( mask4 )

  palm_P1_5 = createImage("images/plant2/plant9.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_5:setFillColor(0.5)
  P1Palm:insert( palm_P1_5 )
  palm_P1_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/plant2/palm9.png" )
  palm_P1_5:setMask( mask5 )

  palm_P1_6 = createImage("images/plant2/plant4.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_6:setFillColor(0.6)
  P1Palm:insert( palm_P1_6 )
  palm_P1_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/plant2/palm4.png" )
  palm_P1_6:setMask( mask6 )

  palm_P1_7 = createImage("images/plant2/plant6.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_7:setFillColor(0.5)
  P1Palm:insert( palm_P1_7 )
  palm_P1_7:scale(0.60, 0.60)
  mask7 = graphics.newMask( "images/plant2/palm6.png" )
  palm_P1_7:setMask( mask7 )

  palm_P1_8 = createImage("images/plant2/plant5.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_8:setFillColor(0.6)
  P1Palm:insert( palm_P1_8 )
  palm_P1_8:scale(0.60, 0.60)
  mask8 = graphics.newMask( "images/plant2/palm5.png" )
  palm_P1_8:setMask( mask8 )

  palm_P1_9 = createImage("images/plant2/plant7.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_9:setFillColor(0.5)
  P1Palm:insert( palm_P1_9 )
  palm_P1_9:scale(0.60, 0.60)
  mask9 = graphics.newMask( "images/plant2/palm7.png" )
  palm_P1_9:setMask( mask9 )

  palm_P1_10 = createImage("images/plant2/plant8.png", 400, 400, display.contentCenterX-1670, display.contentCenterY+1295)
  palm_P1_10:setFillColor(0.5)
  P1Palm:insert( palm_P1_10 )
  palm_P1_10:scale(0.60, 0.60)
  mask10 = graphics.newMask( "images/plant2/palm8.png" )
  palm_P1_10:setMask( mask10 )

  palm_P1_Text = display.newText( "Palm",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Palm:insert( palm_P1_Text )

  return createPalmP1

end

-- Spawn Cycad
function createCycadP1 ()

  P1Cycad = display.newGroup();

  Cycad_P1 = createImage("images/cycad/cycad top.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  Cycad_P1:setFillColor(0.7)
  P1Cycad:insert( Cycad_P1 )
  Cycad_P1:scale(0.60, 0.60)
  mask = graphics.newMask( "images/cycad/cycad top Mask.png" )
  Cycad_P1:setMask( mask )

  Cycad_P1_2 = createImage("images/cycad/cycad trunk.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  Cycad_P1_2:setFillColor(0.7)
  P1Cycad:insert( Cycad_P1_2 )
  Cycad_P1_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/cycad/cycad trunk Mask.png" )
  Cycad_P1_2:setMask( mask2 )

  Cycad_P1_3 = createImage("images/cycad/left leaf.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  Cycad_P1_3:setFillColor(0.6)
  P1Cycad:insert( Cycad_P1_3 )
  Cycad_P1_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/cycad/left leaf Mask.png" )
  Cycad_P1_3:setMask( mask3 )

  Cycad_P1_4 = createImage("images/cycad/right leaf.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  Cycad_P1_4:setFillColor(0.5)
  P1Cycad:insert( Cycad_P1_4 )
  Cycad_P1_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/cycad/right leaf Mask.png" )
  Cycad_P1_4:setMask( mask4 )

  Cycad_P1_5 = createImage("images/cycad/cycad mid left leaf.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  Cycad_P1_5:setFillColor(0.6)
  P1Cycad:insert( Cycad_P1_5 )
  Cycad_P1_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/cycad/cycad mid left leaf Mask.png" )
  Cycad_P1_5:setMask( mask5 )

  Cycad_P1_6 = createImage("images/cycad/cycad mid right leaf.png", 400, 400, display.contentCenterX-1660, display.contentCenterY+1295)
  Cycad_P1_6:setFillColor(0.5)
  P1Cycad:insert( Cycad_P1_6 )
  Cycad_P1_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/cycad/cycad mid right leaf Mask.png" )
  Cycad_P1_6:setMask( mask6 )

  Cycad_P1_Text = display.newText( "Cycad",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Cycad:insert( Cycad_P1_Text )

  return createCycadP1

end

-- Spawn Tree Fern
function createTreeFernP1 ()

  P1TreeFern = display.newGroup();

  TreeFern_P1 = createImage("images/tree fern/tree fern trunk.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1:setFillColor(0.7)
  P1TreeFern:insert( TreeFern_P1 )
  TreeFern_P1:scale(0.90, 0.90)
  mask = graphics.newMask( "images/tree fern/tree fern trunk Mask.png" )
  TreeFern_P1:setMask( mask )

  TreeFern_P1_2 = createImage("images/tree fern/tree fern dead top of trunk leaves.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_2:setFillColor(0.6)
  P1TreeFern:insert( TreeFern_P1_2 )
  TreeFern_P1_2:scale(0.90, 0.90)
  mask2 = graphics.newMask( "images/tree fern/tree fern dead top of trunk leaves Mask.png" )
  TreeFern_P1_2:setMask( mask2 )

  TreeFern_P1_3 = createImage("images/tree fern/tree fern right leaf 1.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_3:setFillColor(0.5)
  P1TreeFern:insert( TreeFern_P1_3 )
  TreeFern_P1_3:scale(0.90, 0.90)
  mask3 = graphics.newMask( "images/tree fern/tree fern right leaf 1 Mask.png" )
  TreeFern_P1_3:setMask( mask3 )

  TreeFern_P1_4 = createImage("images/tree fern/tree fern right leaf 2.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_4:setFillColor(0.6)
  P1TreeFern:insert( TreeFern_P1_4 )
  TreeFern_P1_4:scale(0.90, 0.90)
  mask4 = graphics.newMask( "images/tree fern/tree fern right leaf 2 Mask.png" )
  TreeFern_P1_4:setMask( mask4 )

  TreeFern_P1_5 = createImage("images/tree fern/tree fern right leaf 3.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_5:setFillColor(0.5)
  P1TreeFern:insert( TreeFern_P1_5 )
  TreeFern_P1_5:scale(0.90, 0.90)
  mask5 = graphics.newMask( "images/tree fern/tree fern right leaf 3 Mask.png" )
  TreeFern_P1_5:setMask( mask5 )

  TreeFern_P1_6 = createImage("images/tree fern/tree fern left leaf 1.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_6:setFillColor(0.5)
  P1TreeFern:insert( TreeFern_P1_6 )
  TreeFern_P1_6:scale(0.90, 0.90)
  mask6 = graphics.newMask( "images/tree fern/tree fern left leaf 1 Mask.png" )
  TreeFern_P1_6:setMask( mask6 )

  TreeFern_P1_7 = createImage("images/tree fern/tree fern left leaf 2.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_7:setFillColor(0.6)
  P1TreeFern:insert( TreeFern_P1_7 )
  TreeFern_P1_7:scale(0.90, 0.90)
  mask7 = graphics.newMask( "images/tree fern/tree fern left leaf 2 Mask.png" )
  TreeFern_P1_7:setMask( mask7 )

  TreeFern_P1_8 = createImage("images/tree fern/tree fern left leaf 3.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_8:setFillColor(0.5)
  P1TreeFern:insert( TreeFern_P1_8 )
  TreeFern_P1_8:scale(0.90, 0.90)
  mask8 = graphics.newMask( "images/tree fern/tree fern left leaf 3 Mask.png" )
  TreeFern_P1_8:setMask( mask8 )

  TreeFern_P1_9 = createImage("images/tree fern/tree fern mid leaf.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1275)
  TreeFern_P1_9:setFillColor(0.5)
  P1TreeFern:insert( TreeFern_P1_9 )
  TreeFern_P1_9:scale(0.90, 0.90)
  mask9 = graphics.newMask( "images/tree fern/tree fern mid leaf Mask.png" )
  TreeFern_P1_9:setMask( mask9 )

  TreeFern_P1_Text = display.newText( "Tree Fern",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1TreeFern:insert( TreeFern_P1_Text )

  return createTreeFernP1

end

----------------
-- Large Plants
----------------

-- Spawn Pine
function createPineP1 ()

  P1Pine = display.newGroup();

  pine_P1 = createImage("images/plant4/plant1.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1:setFillColor(0.6)
  P1Pine:insert( pine_P1 )
  pine_P1:scale(0.35, 0.35)
  mask = graphics.newMask( "images/plant4/pine1.png" )
  pine_P1:setMask( mask )

  pine_P1_2 = createImage("images/plant4/plant2.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1_2:setFillColor(0.7)
  P1Pine:insert( pine_P1_2 )
  pine_P1_2:scale(0.35, 0.35)
  mask2 = graphics.newMask( "images/plant4/pine2.png" )
  pine_P1_2:setMask( mask2 )

  pine_P1_3 = createImage("images/plant4/plant3.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1_3:setFillColor(0.8)
  P1Pine:insert( pine_P1_3 )
  pine_P1_3:scale(0.35, 0.35)
  mask3 = graphics.newMask( "images/plant4/pine3.png" )
  pine_P1_3:setMask( mask3 )

  pine_P1_4 = createImage("images/plant4/plant4.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1_4:setFillColor(0.6)
  P1Pine:insert( pine_P1_4 )
  pine_P1_4:scale(0.35, 0.35)
  mask4 = graphics.newMask( "images/plant4/pine4.png" )
  pine_P1_4:setMask( mask4 )

  pine_P1_5 = createImage("images/plant4/plant5.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1_5:setFillColor(0.7)
  P1Pine:insert( pine_P1_5 )
  pine_P1_5:scale(0.35, 0.35)
  mask5 = graphics.newMask( "images/plant4/pine5.png" )
  pine_P1_5:setMask( mask5 )

  pine_P1_6 = createImage("images/plant4/plant6.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1_6:setFillColor(0.7)
  P1Pine:insert( pine_P1_6 )
  pine_P1_6:scale(0.35, 0.35)
  mask6 = graphics.newMask( "images/plant4/pine6.png" )
  pine_P1_6:setMask( mask6 )

  pine_P1_7 = createImage("images/plant4/plant7.png", 600, 1150, display.contentCenterX-1650, display.contentCenterY+1245)
  pine_P1_7:setFillColor(0.7)
  P1Pine:insert( pine_P1_7 )
  pine_P1_7:scale(0.35, 0.35)
  mask7 = graphics.newMask( "images/plant4/pine7.png" )
  pine_P1_7:setMask( mask7 )

  pine_P1_Text = display.newText( "Pine",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Pine:insert( pine_P1_Text )

  return createPineP1

end

-- Spawn Kaori
function createKaoriP1 ()

  P1Kaori = display.newGroup();

  Kaori_P1 = createImage("images/kaori/treetrunk.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1:setFillColor(0.7)
  P1Kaori:insert( Kaori_P1 )
  Kaori_P1:scale(0.60, 0.60)
  mask = graphics.newMask( "images/kaori/treetrunkMASK.png" )
  Kaori_P1:setMask( mask )

  Kaori_P1_2 = createImage("images/kaori/kaori-bottomleftleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_2:setFillColor(0.6)
  P1Kaori:insert( Kaori_P1_2 )
  Kaori_P1_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/kaori/kaori-bottomleftleafclusterMask.png" )
  Kaori_P1_2:setMask( mask2 )

  Kaori_P1_3 = createImage("images/kaori/kaori-bottomrightleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_3:setFillColor(0.5)
  P1Kaori:insert( Kaori_P1_3 )
  Kaori_P1_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/kaori/kaori-bottomrightleafclusterMASK.png" )
  Kaori_P1_3:setMask( mask3 )

  Kaori_P1_4 = createImage("images/kaori/kaori-smalltoprightleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_4:setFillColor(0.4)
  P1Kaori:insert( Kaori_P1_4 )
  Kaori_P1_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/kaori/kaori-smalltoprightleafclusterMASK.png" )
  Kaori_P1_4:setMask( mask4 )

  Kaori_P1_5 = createImage("images/kaori/kaori-topleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_5:setFillColor(0.7)
  P1Kaori:insert( Kaori_P1_5 )
  Kaori_P1_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/kaori/kaori-topleafclusterMASK.png" )
  Kaori_P1_5:setMask( mask5 )

  Kaori_P1_6 = createImage("images/kaori/kaori-topleftleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_6:setFillColor(0.6)
  P1Kaori:insert( Kaori_P1_6 )
  Kaori_P1_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/kaori/kaori-topleftleafclusterMask.png" )
  Kaori_P1_6:setMask( mask6 )

  Kaori_P1_7 = createImage("images/kaori/kaori-toprightleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_7:setFillColor(0.4)
  P1Kaori:insert( Kaori_P1_7 )
  Kaori_P1_7:scale(0.60, 0.60)
  mask7 = graphics.newMask( "images/kaori/kaori-toprightleafclusterMask.png" )
  Kaori_P1_7:setMask( mask7 )

  Kaori_P1_8 = createImage("images/kaori/kaori-verybottomleftleafcluster.png", 400, 400, display.contentCenterX-1650, display.contentCenterY+1295)
  Kaori_P1_8:setFillColor(0.6)
  P1Kaori:insert( Kaori_P1_8 )
  Kaori_P1_8:scale(0.60, 0.60)
  mask8 = graphics.newMask( "images/kaori/kaori-verybottomleftleafclusterMASK.png" )
  Kaori_P1_8:setMask( mask8 )

  Kaori_P1_Text = display.newText( "Kaori",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Kaori:insert( Kaori_P1_Text )

  return createKaoriP1

end

-- Spawn Magnolia
function createMagnoliaP1 ()

  P1Magnolia = display.newGroup();

  Magnolia_P1 = createImage("images/magnolia/mag trunk.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1:setFillColor(0.6)
  P1Magnolia:insert( Magnolia_P1 )
  Magnolia_P1:scale(1, 1)
  mask = graphics.newMask( "images/magnolia/mag trunkMASK.png" )
  Magnolia_P1:setMask( mask )
  Magnolia_P1:scale(0.70, 0.70)

  Magnolia_P1_2 = createImage("images/magnolia/mag leafchunk1.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1_2:setFillColor(0.7)
  P1Magnolia:insert( Magnolia_P1_2 )
  Magnolia_P1_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/magnolia/mag leafchunk1MASK.png" )
  Magnolia_P1_2:setMask( mask2 )

  Magnolia_P1_3 = createImage("images/magnolia/mag leafchunk2.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1_3:setFillColor(0.8)
  P1Magnolia:insert( Magnolia_P1_3 )
  Magnolia_P1_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/magnolia/mag leafchunk2MASK.png" )
  Magnolia_P1_3:setMask( mask3 )

  Magnolia_P1_4 = createImage("images/magnolia/mag leafchunk3.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1_4:setFillColor(0.6)
  P1Magnolia:insert( Magnolia_P1_4 )
  Magnolia_P1_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/magnolia/mag leafchunk3MASK.png" )
  Magnolia_P1_4:setMask( mask4 )

  Magnolia_P1_5 = createImage("images/magnolia/mag leafchunk4.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1_5:setFillColor(0.7)
  P1Magnolia:insert( Magnolia_P1_5 )
  Magnolia_P1_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/magnolia/mag leafchunk4MASK.png" )
  Magnolia_P1_5:setMask( mask5 )

  Magnolia_P1_6 = createImage("images/magnolia/mag leafchunk5.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1_6:setFillColor(0.7)
  P1Magnolia:insert( Magnolia_P1_6 )
  Magnolia_P1_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/magnolia/mag leafchunk5MASK.png" )
  Magnolia_P1_6:setMask( mask6 )

  Magnolia_P1_7 = createImage("images/magnolia/mag leafchunk6.png", 400, 700, display.contentCenterX-1625, display.contentCenterY+1235)
  Magnolia_P1_7:setFillColor(0.7)
  P1Magnolia:insert( Magnolia_P1_7 )
  Magnolia_P1_7:scale(0.70, 0.70)
  mask7 = graphics.newMask( "images/magnolia/mag leafchunk6MASK.png" )
  Magnolia_P1_7:setMask( mask7 )

  Magnolia_P1_Text = display.newText( "Magnolia",display.contentCenterX-1660, display.contentCenterY+1460, native.systemFont, 40 )
  P1Magnolia:insert( Magnolia_P1_Text )

  return createMagnoliaP1

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

  P1NormalSelect = display.newImageRect( "images/paintbuttons/NormalButton.png", 140, 140)
  P1NormalSelect.x = display.contentCenterX-1370
  P1NormalSelect.y = display.contentCenterY+1050
  P1Colouring:insert( P1NormalSelect )

  P1RainbowSelect = display.newImageRect( "images/paintbuttons/Rainbow/RainbowButton.png", 140, 140)
  P1RainbowSelect.x = display.contentCenterX-1270
  P1RainbowSelect.y = display.contentCenterY+1050
  P1Colouring:insert( P1RainbowSelect )

  P1StampSelect = display.newImageRect( "images/paintbuttons/StampButton.png", 140, 140)
  P1StampSelect.x = display.contentCenterX-1170
  P1StampSelect.y = display.contentCenterY+1050
  P1Colouring:insert( P1StampSelect )

  --------------------------------------
  -- creates normal colour selection buttons.
  --------------------------------------
  P1normalPalette = display.newGroup();

  btn_new1 = display.newImageRect( "images/paintbuttons/paletteButton1.png", 130, 130)
  btn_new1.color = { 0.3, 0.5, 0.5 }
  btn_new1.x = display.contentCenterX-1380
  btn_new1.y = display.contentCenterY+1250
  P1normalPalette:insert( btn_new1 )

  btn_new2 = display.newImageRect( "images/paintbuttons/paletteButton2.png", 130, 130)
  btn_new2.color = { 0.3, 0.5, 0.1 }
  btn_new2.x = display.contentCenterX-1250
  btn_new2.y = display.contentCenterY+1250
  P1normalPalette:insert( btn_new2 )

  btn_new3 = display.newImageRect( "images/paintbuttons/paletteButton3.png", 130, 130)
  btn_new3.color = { 0.7, 0.8, 0 }
  btn_new3.x = display.contentCenterX-1380
  btn_new3.y = display.contentCenterY+1380
  P1normalPalette:insert( btn_new3 )

  btn_new4 = display.newImageRect( "images/paintbuttons/paletteButton4.png", 130, 130)
  btn_new4.color = { 0.5, 0.3, 0.2 }
  btn_new4.x = display.contentCenterX-1250
  btn_new4.y = display.contentCenterY+1380
  P1normalPalette:insert( btn_new4 )

  btn_new5 = display.newImageRect( "images/paintbuttons/paletteButton5.png", 130, 130)
  btn_new5.color = { 0.8, 1, 0.6 }
  btn_new5.x = display.contentCenterX-1120
  btn_new5.y = display.contentCenterY+1250
  P1normalPalette:insert( btn_new5 )

  btn_new6 = display.newImageRect( "images/paintbuttons/paletteButton6.png", 130, 130)
  btn_new6.color = { 0.8, 0.7, 0.6 }
  btn_new6.x = display.contentCenterX-1120
  btn_new6.y = display.contentCenterY+1380
  P1normalPalette:insert( btn_new6 )

  P1NormalSelectGlow = display.newImageRect( "images/paintbuttons/PaletteSelectionGlow.png", 140, 140)
  P1NormalSelectGlow.x = display.contentCenterX-1370
  P1NormalSelectGlow.y = display.contentCenterY+1050
  P1normalPalette:insert( P1NormalSelectGlow )

  P1Colouring:insert( P1normalPalette )

  --------------------------------------
  -- creates rainbow colour selection buttons.
  --------------------------------------
  P1rainbowPalette = display.newGroup();

  btn_rainbow1 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton1.png", 130, 130)
  btn_rainbow1.color = { 1, 0.3, 0.5}
  btn_rainbow1.x = display.contentCenterX-1380
  btn_rainbow1.y = display.contentCenterY+1250
  P1rainbowPalette:insert( btn_rainbow1 )

  btn_rainbow2 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton2.png", 130, 130)
  btn_rainbow2.color = { 0.3, 0.5, 1 }
  btn_rainbow2.x = display.contentCenterX-1250
  btn_rainbow2.y = display.contentCenterY+1250
  P1rainbowPalette:insert( btn_rainbow2 )

  btn_rainbow3 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton3.png", 130, 130)
  btn_rainbow3.color = { 0.9, 0.3, 1 }
  btn_rainbow3.x = display.contentCenterX-1380
  btn_rainbow3.y = display.contentCenterY+1380
  P1rainbowPalette:insert( btn_rainbow3 )

  btn_rainbow4 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton4.png", 130, 130)
  btn_rainbow4.color = { 1, 1, 0.5 }
  btn_rainbow4.x = display.contentCenterX-1250
  btn_rainbow4.y = display.contentCenterY+1380
  P1rainbowPalette:insert( btn_rainbow4 )

  btn_rainbow5 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton5.png", 130, 130)
  btn_rainbow5.color = { 1, 0.7, 0.5 }
  btn_rainbow5.x = display.contentCenterX-1120
  btn_rainbow5.y = display.contentCenterY+1250
  P1rainbowPalette:insert( btn_rainbow5 )

  btn_rainbow6 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton6.png", 130, 130)
  btn_rainbow6.color = { 0.5, 0.6, 0.4 }
  btn_rainbow6.x = display.contentCenterX-1120
  btn_rainbow6.y = display.contentCenterY+1380
  P1rainbowPalette:insert( btn_rainbow6 )

  P1RainbowSelectGlow = display.newImageRect( "images/paintbuttons/PaletteSelectionGlow.png", 140, 140)
  P1RainbowSelectGlow.x = display.contentCenterX-1270
  P1RainbowSelectGlow.y = display.contentCenterY+1050
  P1rainbowPalette:insert( P1RainbowSelectGlow )

  P1Colouring:insert( P1rainbowPalette )
  toggleVisibility( P1rainbowPalette )

  --------------------------------------
  -- creates Stamp selection buttons.
  --------------------------------------

  P1stampPalette = display.newGroup();

  btn_stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 130, 130)
  btn_stamp1.x = display.contentCenterX-1380
  btn_stamp1.y = display.contentCenterY+1250
  btn_stamp1.Name = "P1Stamp1"
  P1stampPalette:insert( btn_stamp1 )

  btn_stamp2 = display.newImageRect( "images/stamps/Stamp2.png", 130, 130)
  btn_stamp2.x = display.contentCenterX-1380
  btn_stamp2.y = display.contentCenterY+1380
  btn_stamp2.Name = "P1Stamp2"
  P1stampPalette:insert( btn_stamp2 )

  P1StampSelectGlow = display.newImageRect( "images/paintbuttons/PaletteSelectionGlow.png", 140, 140)
  P1StampSelectGlow.x = display.contentCenterX-1170
  P1StampSelectGlow.y = display.contentCenterY+1050
  P1stampPalette:insert( P1StampSelectGlow )

  P1Colouring:insert( P1stampPalette )
  toggleVisibility( P1stampPalette )

  ---------------------------------------------------------------------------------------------
  -- creates done buttons for when you're finished colouring, set to invisible on level start.
  ---------------------------------------------------------------------------------------------
  donebtn_spawnFlaxP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnFlaxP1.x = display.contentCenterX-1260
  donebtn_spawnFlaxP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFlaxP1 )
  P1Colouring:insert( donebtn_spawnFlaxP1 )

  donebtn_spawnFernP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnFernP1.x = display.contentCenterX-1260
  donebtn_spawnFernP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFernP1 )
  P1Colouring:insert( donebtn_spawnFernP1 )

  donebtn_spawnHorsetailP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnHorsetailP1.x = display.contentCenterX-1260
  donebtn_spawnHorsetailP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnHorsetailP1 )
  P1Colouring:insert( donebtn_spawnHorsetailP1 )

  donebtn_spawnPalmP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnPalmP1.x = display.contentCenterX-1260
  donebtn_spawnPalmP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPalmP1 )
  P1Colouring:insert( donebtn_spawnPalmP1 )

  donebtn_spawnCycadP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnCycadP1.x = display.contentCenterX-1260
  donebtn_spawnCycadP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnCycadP1 )
  P1Colouring:insert( donebtn_spawnCycadP1 )

  donebtn_spawnTreeFernP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnTreeFernP1.x = display.contentCenterX-1260
  donebtn_spawnTreeFernP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnTreeFernP1 )
  P1Colouring:insert( donebtn_spawnTreeFernP1 )

  donebtn_spawnPineP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnPineP1.x = display.contentCenterX-1260
  donebtn_spawnPineP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPineP1 )
  P1Colouring:insert( donebtn_spawnPineP1 )

  donebtn_spawnKaoriP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnKaoriP1.x = display.contentCenterX-1260
  donebtn_spawnKaoriP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnKaoriP1 )
  P1Colouring:insert( donebtn_spawnKaoriP1 )

  donebtn_spawnMagnoliaP1 = display.newImageRect( "images/Done Button Template.png", 150, 130)
  donebtn_spawnMagnoliaP1.x = display.contentCenterX-1260
  donebtn_spawnMagnoliaP1.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnMagnoliaP1 )
  P1Colouring:insert( donebtn_spawnMagnoliaP1 )

  -----------------------------------------------------------------------------------------------
  -- creates compost buttons for if you want to change plants, set to invisible on level start.
  -----------------------------------------------------------------------------------------------
  compostButtonFlaxP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFlaxP1.x = display.contentCenterX-1660
  compostButtonFlaxP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFlaxP1 )
  P1Colouring:insert( compostButtonFlaxP1 )

  compostButtonFernP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFernP1.x = display.contentCenterX-1660
  compostButtonFernP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFernP1 )
  P1Colouring:insert( compostButtonFernP1 )

  compostButtonHorsetailP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonHorsetailP1.x = display.contentCenterX-1660
  compostButtonHorsetailP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonHorsetailP1 )
  P1Colouring:insert( compostButtonHorsetailP1 )

  compostButtonPalmP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPalmP1.x = display.contentCenterX-1660
  compostButtonPalmP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPalmP1 )
  P1Colouring:insert( compostButtonPalmP1 )

  compostButtonCycadP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonCycadP1.x = display.contentCenterX-1660
  compostButtonCycadP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonCycadP1 )
  P1Colouring:insert( compostButtonCycadP1 )

  compostButtonTreeFernP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonTreeFernP1.x = display.contentCenterX-1660
  compostButtonTreeFernP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonTreeFernP1 )
  P1Colouring:insert( compostButtonTreeFernP1 )

  compostButtonPineP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPineP1.x = display.contentCenterX-1660
  compostButtonPineP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPineP1 )
  P1Colouring:insert( compostButtonPineP1 )

  compostButtonKaoriP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonKaoriP1.x = display.contentCenterX-1660
  compostButtonKaoriP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonKaoriP1 )
  P1Colouring:insert( compostButtonKaoriP1 )

  compostButtonMagnoliaP1 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonMagnoliaP1.x = display.contentCenterX-1660
  compostButtonMagnoliaP1.y = display.contentCenterY+1560
  toggleVisibility( compostButtonMagnoliaP1 )
  P1Colouring:insert( compostButtonMagnoliaP1 )

end


  












