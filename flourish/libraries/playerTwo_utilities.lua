
------------------------------------
-- Creates plant selection buttons.
------------------------------------
function selectionSetupP2 ()

  P2Select = display.newGroup();

  -- Small Plant Buttons
  btn_spawnFlaxP2 = display.newImageRect( "images/plant1/flax seed.png", 900, 749)
  btn_spawnFlaxP2.x = display.contentCenterX-470
  btn_spawnFlaxP2.y = display.contentCenterY+1500
  P2selectmask1 = graphics.newMask( "images/plant1/flax seed Mask.png" )
  btn_spawnFlaxP2:setMask( P2selectmask1 )
  P2Select:insert( btn_spawnFlaxP2 )

  btn_outlineFlaxP2 = display.newImageRect( "images/plant1/flax seed outline.png", 900, 749)
  btn_outlineFlaxP2.x = display.contentCenterX-470
  btn_outlineFlaxP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineFlaxP2 )

  btn_spawnFernP2 = display.newImageRect( "images/plant3/fern spore.png", 900, 749)
  btn_spawnFernP2.x = display.contentCenterX-470
  btn_spawnFernP2.y = display.contentCenterY+1500
  P2selectmask2 = graphics.newMask( "images/plant3/fern spore Mask.png" )
  btn_spawnFernP2:setMask( P2selectmask2 )
  P2Select:insert( btn_spawnFernP2 )

  btn_outlineFernP2 = display.newImageRect( "images/plant3/fern spore outline.png", 900, 749)
  btn_outlineFernP2.x = display.contentCenterX-470
  btn_outlineFernP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineFernP2 )

  btn_spawnHorsetailP2 = display.newImageRect( "images/horsetail/horsegrassseed.png", 900, 749)
  btn_spawnHorsetailP2.x = display.contentCenterX-470
  btn_spawnHorsetailP2.y = display.contentCenterY+1500
  P2selectmask3 = graphics.newMask( "images/horsetail/horsegrassseed Mask.png" )
  btn_spawnHorsetailP2:setMask( P2selectmask3 )
  P2Select:insert( btn_spawnHorsetailP2 )

  btn_outlineHorsetailP2 = display.newImageRect( "images/horsetail/horsegrassseed outline.png", 900, 749)
  btn_outlineHorsetailP2.x = display.contentCenterX-470
  btn_outlineHorsetailP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineHorsetailP2 )

  -- Meduim Plant Buttons
  P2MediumPlants = display.newGroup();

  btn_spawnPalmP2 = display.newImageRect( "images/plant2/palm seed.png", 900, 749)
  btn_spawnPalmP2.x = display.contentCenterX-470
  btn_spawnPalmP2.y = display.contentCenterY+1500
  P2selectmask4 = graphics.newMask( "images/plant2/palm seed Mask.png" )
  btn_spawnPalmP2:setMask( P2selectmask4 )
  P2MediumPlants:insert( btn_spawnPalmP2 )

  btn_outlinePalmP2 = display.newImageRect( "images/plant2/palm seed outline.png", 900, 749)
  btn_outlinePalmP2.x = display.contentCenterX-470
  btn_outlinePalmP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlinePalmP2 )

  btn_spawnCycadP2 = display.newImageRect( "images/cycad/cycad seed.png", 900, 749)
  btn_spawnCycadP2.x = display.contentCenterX-470
  btn_spawnCycadP2.y = display.contentCenterY+1500
  P2selectmask5 = graphics.newMask( "images/cycad/cycad seed Mask.png" )
  btn_spawnCycadP2:setMask( P2selectmask5 )
  P2MediumPlants:insert( btn_spawnCycadP2 )

  btn_outlineCycadP2 = display.newImageRect( "images/cycad/cycad seed outline.png", 900, 749)
  btn_outlineCycadP2.x = display.contentCenterX-470
  btn_outlineCycadP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineCycadP2 )

  btn_spawnTreeFernP2 = display.newImageRect( "images/tree fern/tree fern spores.png", 900, 749)
  btn_spawnTreeFernP2.x = display.contentCenterX-470
  btn_spawnTreeFernP2.y = display.contentCenterY+1500
  P2selectmask6 = graphics.newMask( "images/tree fern/tree fern spores Mask.png" )
  btn_spawnTreeFernP2:setMask( P2selectmask6 )
  P2MediumPlants:insert( btn_spawnTreeFernP2 )

  btn_outlineTreeFernP2 = display.newImageRect( "images/tree fern/tree fern spores outline.png", 900, 749)
  btn_outlineTreeFernP2.x = display.contentCenterX-470
  btn_outlineTreeFernP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineTreeFernP2 )

  P2Select:insert( P2MediumPlants )
  toggleVisibility( P2MediumPlants )

  -- Large Plant Buttons
  P2LargePlants = display.newGroup();

  btn_spawnPineP2 = display.newImageRect( "images/plant4/pine seed deselected.png", 900, 749)
  btn_spawnPineP2.x = display.contentCenterX-470
  btn_spawnPineP2.y = display.contentCenterY+1500
  P2selectmask7 = graphics.newMask( "images/plant4/pine seed deselected Mask.png" )
  btn_spawnPineP2:setMask( P2selectmask7 )
  P2LargePlants:insert( btn_spawnPineP2 )

  btn_outlinePineP2 = display.newImageRect( "images/plant4/pine seed deselected outline.png", 900, 749)
  btn_outlinePineP2.x = display.contentCenterX-470
  btn_outlinePineP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlinePineP2 )

  btn_spawnKaoriP2 = display.newImageRect( "images/kaori/kaoriseed-forest.png", 900, 749)
  btn_spawnKaoriP2.x = display.contentCenterX-470
  btn_spawnKaoriP2.y = display.contentCenterY+1500
  P2selectmask8 = graphics.newMask( "images/kaori/kaoriseed-forest Mask.png" )
  btn_spawnKaoriP2:setMask( P2selectmask8 )
  P2LargePlants:insert( btn_spawnKaoriP2 )

  btn_outlineKaoriP2 = display.newImageRect( "images/kaori/kaoriseed-forest outline.png", 900, 749)
  btn_outlineKaoriP2.x = display.contentCenterX-470
  btn_outlineKaoriP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineKaoriP2 )

  btn_spawnMagnoliaP2 = display.newImageRect( "images/magnolia/magseed.png", 900, 749)
  btn_spawnMagnoliaP2.x = display.contentCenterX-470
  btn_spawnMagnoliaP2.y = display.contentCenterY+1500
  P2selectmask9 = graphics.newMask( "images/magnolia/magseed Mask.png" )
  btn_spawnMagnoliaP2:setMask( P2selectmask9 )
  P2LargePlants:insert( btn_spawnMagnoliaP2 )

  btn_outlineMagnoliaP2 = display.newImageRect( "images/magnolia/magseed outline.png", 900, 749)
  btn_outlineMagnoliaP2.x = display.contentCenterX-470
  btn_outlineMagnoliaP2.y = display.contentCenterY+1500
  P2Select:insert( btn_outlineMagnoliaP2 )

  P2Select:insert( P2LargePlants )
  toggleVisibility( P2LargePlants )
  P2Select:scale( 1., 0.74 )
end

---------------------------------
--functions for Spawning Plants.
---------------------------------

-----------------
-- Small Plants
-----------------

-- Spawn Flax
function createFlaxP2 ()  

  P2Flax = display.newGroup();

  flax_P2 = createImage("images/plant1/plant1.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2:setFillColor(0.6)
  P2Flax:insert( flax_P2 )
  flax_P2:scale(0.70, 0.70)
  mask = graphics.newMask( "images/plant1/flax1.png" )
  flax_P2:setMask( mask )

  flax_P2_2 = createImage("images/plant1/plant2.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2_2:setFillColor(0.7)
  P2Flax:insert( flax_P2_2 )
  flax_P2_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/plant1/flax2.png" )
  flax_P2_2:setMask( mask2 )

  flax_P2_3 = createImage("images/plant1/plant3.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2_3:setFillColor(0.8)
  P2Flax:insert( flax_P2_3 )
  flax_P2_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/plant1/flax3.png" )
  flax_P2_3:setMask( mask3 )

  flax_P2_4 = createImage("images/plant1/plant4.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2_4:setFillColor(0.6)
  P2Flax:insert( flax_P2_4 )
  flax_P2_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/plant1/flax4.png" )
  flax_P2_4:setMask( mask4 )

  flax_P2_5 = createImage("images/plant1/plant5.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2_5:setFillColor(0.7)
  P2Flax:insert( flax_P2_5 )
  flax_P2_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/plant1/flax5.png" )
  flax_P2_5:setMask( mask5 )

  flax_P2_6 = createImage("images/plant1/plant6.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2_6:setFillColor(0.7)
  P2Flax:insert( flax_P2_6 )
  flax_P2_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/plant1/flax6.png" )
  flax_P2_6:setMask( mask6 )

  flax_P2_7 = createImage("images/plant1/plant7.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  flax_P2_7:setFillColor(0.7)
  P2Flax:insert( flax_P2_7 )
  flax_P2_7:scale(0.70, 0.70)
  mask7 = graphics.newMask( "images/plant1/flax7.png" )
  flax_P2_7:setMask( mask7 )

  flax_P2_Text = display.newText( "Flax",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Flax:insert( flax_P2_Text )

  return createFlaxP2

end

-- Spawn Fern
function createFernP2 ()

  P2Fern = display.newGroup();
  
  fern_P2 = createImage("images/plant3/plant1.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  fern_P2:setFillColor(0.6)
  P2Fern:insert( fern_P2 )
  fern_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant3/fern1.png" )
  fern_P2:setMask( mask )

  fern_P2_2 = createImage("images/plant3/plant2.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  fern_P2_2:setFillColor(0.7)
  P2Fern:insert( fern_P2_2 )
  fern_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant3/fern2.png" )
  fern_P2_2:setMask( mask2 )

  fern_P2_3 = createImage("images/plant3/plant3.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  fern_P2_3:setFillColor(0.8)
  P2Fern:insert( fern_P2_3 )
  fern_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant3/fern3.png" )
  fern_P2_3:setMask( mask3 )

  fern_P2_4 = createImage("images/plant3/plant4.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  fern_P2_4:setFillColor(0.6)
  P2Fern:insert( fern_P2_4 )
  fern_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant3/fern4.png" )
  fern_P2_4:setMask( mask4 )

  fern_P2_5 = createImage("images/plant3/plant5.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  fern_P2_5:setFillColor(0.6)
  P2Fern:insert( fern_P2_5 )
  fern_P2_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/plant3/fern5.png" )
  fern_P2_5:setMask( mask5 )

  fern_P2_Text = display.newText( "Fern",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Fern:insert( fern_P2_Text )

  return createFernP2

end

-- Create Horsetail
function createHorsetailP2 ()  

  P2Horsetail = display.newGroup();

  Horsetail_P2 = createImage("images/horsetail/horsetailstalk 1.png", 400, 700, display.contentCenterX-390, display.contentCenterY+1265)
  Horsetail_P2:setFillColor(0.6)
  P2Horsetail:insert( Horsetail_P2 )
  Horsetail_P2:scale(0.70, 0.70)
  mask = graphics.newMask( "images/horsetail/horsetailstalk 1 MASK.png" )
  Horsetail_P2:setMask( mask )

  Horsetail_P2_2 = createImage("images/horsetail/horsetailstalk 2.png", 400, 700, display.contentCenterX-390, display.contentCenterY+1265)
  Horsetail_P2_2:setFillColor(0.7)
  P2Horsetail:insert( Horsetail_P2_2 )
  Horsetail_P2_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/horsetail/horsetailstalk 2 MASK.png" )
  Horsetail_P2_2:setMask( mask2 )

  Horsetail_P2_3 = createImage("images/horsetail/horsetailstalk 3.png", 400, 700, display.contentCenterX-390, display.contentCenterY+1265)
  Horsetail_P2_3:setFillColor(0.8)
  P2Horsetail:insert( Horsetail_P2_3 )
  Horsetail_P2_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/horsetail/horsetailstalk 3 MASK.png" )
  Horsetail_P2_3:setMask( mask3 )

  Horsetail_P2_4 = createImage("images/horsetail/horsetailstalk 4.png", 400, 700, display.contentCenterX-390, display.contentCenterY+1265)
  Horsetail_P2_4:setFillColor(0.6)
  P2Horsetail:insert( Horsetail_P2_4 )
  Horsetail_P2_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/horsetail/horsetailstalk 4 MASK.png" )
  Horsetail_P2_4:setMask( mask4 )

  Horsetail_P2_5 = createImage("images/horsetail/horsetailstalk 5.png", 400, 700, display.contentCenterX-390, display.contentCenterY+1265)
  Horsetail_P2_5:setFillColor(0.7)
  P2Horsetail:insert( Horsetail_P2_5 )
  Horsetail_P2_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/horsetail/horsetailstalk 5 MASK.png" )
  Horsetail_P2_5:setMask( mask5 )

  Horsetail_P2_Text = display.newText( "Horsetail",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Horsetail:insert( Horsetail_P2_Text )

  return createHorsetailP2

end

------------------
-- Medium Plants
------------------

-- Spawn Palm
function createPalmP2 ()

  P2Palm = display.newGroup();

  palm_P2 = createImage("images/plant2/plant3.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2:setFillColor(0.7)
  P2Palm:insert( palm_P2 )
  palm_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant2/palm3.png" )
  palm_P2:setMask( mask )

  palm_P2_2 = createImage("images/plant2/plant2.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_2:setFillColor(0.6)
  P2Palm:insert( palm_P2_2 )
  palm_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant2/palm2.png" )
  palm_P2_2:setMask( mask2 )

  palm_P2_3 = createImage("images/plant2/plant1.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_3:setFillColor(0.5)
  P2Palm:insert( palm_P2_3 )
  palm_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant2/palm1.png" )
  palm_P2_3:setMask( mask3 )

  palm_P2_4 = createImage("images/plant2/plant10.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_4:setFillColor(0.6)
  P2Palm:insert( palm_P2_4 )
  palm_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant2/palm10.png" )
  palm_P2_4:setMask( mask4 )

  palm_P2_5 = createImage("images/plant2/plant9.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_5:setFillColor(0.5)
  P2Palm:insert( palm_P2_5 )
  palm_P2_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/plant2/palm9.png" )
  palm_P2_5:setMask( mask5 )

  palm_P2_6 = createImage("images/plant2/plant4.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_6:setFillColor(0.6)
  P2Palm:insert( palm_P2_6 )
  palm_P2_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/plant2/palm4.png" )
  palm_P2_6:setMask( mask6 )

  palm_P2_7 = createImage("images/plant2/plant6.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_7:setFillColor(0.5)
  P2Palm:insert( palm_P2_7 )
  palm_P2_7:scale(0.60, 0.60)
  mask7 = graphics.newMask( "images/plant2/palm6.png" )
  palm_P2_7:setMask( mask7 )

  palm_P2_8 = createImage("images/plant2/plant5.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_8:setFillColor(0.6)
  P2Palm:insert( palm_P2_8 )
  palm_P2_8:scale(0.60, 0.60)
  mask8 = graphics.newMask( "images/plant2/palm5.png" )
  palm_P2_8:setMask( mask8 )

  palm_P2_9 = createImage("images/plant2/plant7.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_9:setFillColor(0.5)
  P2Palm:insert( palm_P2_9 )
  palm_P2_9:scale(0.60, 0.60)
  mask9 = graphics.newMask( "images/plant2/palm7.png" )
  palm_P2_9:setMask( mask9 )

  palm_P2_10 = createImage("images/plant2/plant8.png", 400, 400, display.contentCenterX-400, display.contentCenterY+1295)
  palm_P2_10:setFillColor(0.5)
  P2Palm:insert( palm_P2_10 )
  palm_P2_10:scale(0.60, 0.60)
  mask10 = graphics.newMask( "images/plant2/palm8.png" )
  palm_P2_10:setMask( mask10 )

  palm_P2_Text = display.newText( "Palm",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Palm:insert( palm_P2_Text )

  return createPalmP2

end

-- Spawn Cycad
function createCycadP2 ()

  P2Cycad = display.newGroup();

  Cycad_P2 = createImage("images/cycad/cycad top.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  Cycad_P2:setFillColor(0.7)
  P2Cycad:insert( Cycad_P2 )
  Cycad_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/cycad/cycad top Mask.png" )
  Cycad_P2:setMask( mask )

  Cycad_P2_2 = createImage("images/cycad/cycad trunk.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  Cycad_P2_2:setFillColor(0.7)
  P2Cycad:insert( Cycad_P2_2 )
  Cycad_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/cycad/cycad trunk Mask.png" )
  Cycad_P2_2:setMask( mask2 )

  Cycad_P2_3 = createImage("images/cycad/left leaf.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  Cycad_P2_3:setFillColor(0.6)
  P2Cycad:insert( Cycad_P2_3 )
  Cycad_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/cycad/left leaf Mask.png" )
  Cycad_P2_3:setMask( mask3 )

  Cycad_P2_4 = createImage("images/cycad/right leaf.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  Cycad_P2_4:setFillColor(0.5)
  P2Cycad:insert( Cycad_P2_4 )
  Cycad_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/cycad/right leaf Mask.png" )
  Cycad_P2_4:setMask( mask4 )

  Cycad_P2_5 = createImage("images/cycad/cycad mid left leaf.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  Cycad_P2_5:setFillColor(0.6)
  P2Cycad:insert( Cycad_P2_5 )
  Cycad_P2_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/cycad/cycad mid left leaf Mask.png" )
  Cycad_P2_5:setMask( mask5 )

  Cycad_P2_6 = createImage("images/cycad/cycad mid right leaf.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1295)
  Cycad_P2_6:setFillColor(0.5)
  P2Cycad:insert( Cycad_P2_6 )
  Cycad_P2_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/cycad/cycad mid right leaf Mask.png" )
  Cycad_P2_6:setMask( mask6 )

  Cycad_P2_Text = display.newText( "Cycad",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Cycad:insert( Cycad_P2_Text )

  return createCycadP2

end

-- Spawn Tree Fern
function createTreeFernP2 ()

  P2TreeFern = display.newGroup();

  TreeFern_P2 = createImage("images/tree fern/tree fern trunk.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2:setFillColor(0.7)
  P2TreeFern:insert( TreeFern_P2 )
  TreeFern_P2:scale(0.90, 0.90)
  mask = graphics.newMask( "images/tree fern/tree fern trunk Mask.png" )
  TreeFern_P2:setMask( mask )

  TreeFern_P2_2 = createImage("images/tree fern/tree fern dead top of trunk leaves.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_2:setFillColor(0.6)
  P2TreeFern:insert( TreeFern_P2_2 )
  TreeFern_P2_2:scale(0.90, 0.90)
  mask2 = graphics.newMask( "images/tree fern/tree fern dead top of trunk leaves Mask.png" )
  TreeFern_P2_2:setMask( mask2 )

  TreeFern_P2_3 = createImage("images/tree fern/tree fern right leaf 1.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_3:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_3 )
  TreeFern_P2_3:scale(0.90, 0.90)
  mask3 = graphics.newMask( "images/tree fern/tree fern right leaf 1 Mask.png" )
  TreeFern_P2_3:setMask( mask3 )

  TreeFern_P2_4 = createImage("images/tree fern/tree fern right leaf 2.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_4:setFillColor(0.6)
  P2TreeFern:insert( TreeFern_P2_4 )
  TreeFern_P2_4:scale(0.90, 0.90)
  mask4 = graphics.newMask( "images/tree fern/tree fern right leaf 2 Mask.png" )
  TreeFern_P2_4:setMask( mask4 )

  TreeFern_P2_5 = createImage("images/tree fern/tree fern right leaf 3.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_5:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_5 )
  TreeFern_P2_5:scale(0.90, 0.90)
  mask5 = graphics.newMask( "images/tree fern/tree fern right leaf 3 Mask.png" )
  TreeFern_P2_5:setMask( mask5 )

  TreeFern_P2_6 = createImage("images/tree fern/tree fern left leaf 1.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_6:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_6 )
  TreeFern_P2_6:scale(0.90, 0.90)
  mask6 = graphics.newMask( "images/tree fern/tree fern left leaf 1 Mask.png" )
  TreeFern_P2_6:setMask( mask6 )

  TreeFern_P2_7 = createImage("images/tree fern/tree fern left leaf 2.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_7:setFillColor(0.6)
  P2TreeFern:insert( TreeFern_P2_7 )
  TreeFern_P2_7:scale(0.90, 0.90)
  mask7 = graphics.newMask( "images/tree fern/tree fern left leaf 2 Mask.png" )
  TreeFern_P2_7:setMask( mask7 )

  TreeFern_P2_8 = createImage("images/tree fern/tree fern left leaf 3.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_8:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_8 )
  TreeFern_P2_8:scale(0.90, 0.90)
  mask8 = graphics.newMask( "images/tree fern/tree fern left leaf 3 Mask.png" )
  TreeFern_P2_8:setMask( mask8 )

  TreeFern_P2_9 = createImage("images/tree fern/tree fern mid leaf.png", 400, 400, display.contentCenterX-390, display.contentCenterY+1275)
  TreeFern_P2_9:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_9 )
  TreeFern_P2_9:scale(0.90, 0.90)
  mask9 = graphics.newMask( "images/tree fern/tree fern mid leaf Mask.png" )
  TreeFern_P2_9:setMask( mask9 )

  TreeFern_P2_Text = display.newText( "Tree Fern",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2TreeFern:insert( TreeFern_P2_Text )

  return createTreeFernP2

end

-----------------
-- Large Plants
-----------------

function createPineP2 ()

  P2Pine = display.newGroup();

  pine_P2 = createImage("images/plant4/plant1.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2:setFillColor(0.6)
  P2Pine:insert( pine_P2 )
  pine_P2:scale(0.35, 0.35)
  mask = graphics.newMask( "images/plant4/pine1.png" )
  pine_P2:setMask( mask )

  pine_P2_2 = createImage("images/plant4/plant2.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2_2:setFillColor(0.7)
  P2Pine:insert( pine_P2_2 )
  pine_P2_2:scale(0.35, 0.35)
  mask2 = graphics.newMask( "images/plant4/pine2.png" )
  pine_P2_2:setMask( mask2 )

  pine_P2_3 = createImage("images/plant4/plant3.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2_3:setFillColor(0.8)
  P2Pine:insert( pine_P2_3 )
  pine_P2_3:scale(0.35, 0.35)
  mask3 = graphics.newMask( "images/plant4/pine3.png" )
  pine_P2_3:setMask( mask3 )

  pine_P2_4 = createImage("images/plant4/plant4.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2_4:setFillColor(0.6)
  P2Pine:insert( pine_P2_4 )
  pine_P2_4:scale(0.35, 0.35)
  mask4 = graphics.newMask( "images/plant4/pine4.png" )
  pine_P2_4:setMask( mask4 )

  pine_P2_5 = createImage("images/plant4/plant5.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2_5:setFillColor(0.7)
  P2Pine:insert( pine_P2_5 )
  pine_P2_5:scale(0.35, 0.35)
  mask5 = graphics.newMask( "images/plant4/pine5.png" )
  pine_P2_5:setMask( mask5 )

  pine_P2_6 = createImage("images/plant4/plant6.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2_6:setFillColor(0.7)
  P2Pine:insert( pine_P2_6 )
  pine_P2_6:scale(0.35, 0.35)
  mask6 = graphics.newMask( "images/plant4/pine6.png" )
  pine_P2_6:setMask( mask6 )

  pine_P2_7 = createImage("images/plant4/plant7.png", 600, 1150, display.contentCenterX-380, display.contentCenterY+1245)
  pine_P2_7:setFillColor(0.7)
  P2Pine:insert( pine_P2_7 )
  pine_P2_7:scale(0.35, 0.35)
  mask7 = graphics.newMask( "images/plant4/pine7.png" )
  pine_P2_7:setMask( mask7 )

  pine_P2_Text = display.newText( "Pine",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Pine:insert( pine_P2_Text )

  return createPineP2

end

-- Spawn Kaori
function createKaoriP2 ()

  P2Kaori = display.newGroup();

  Kaori_P2 = createImage("images/kaori/treetrunk.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2:setFillColor(0.7)
  P2Kaori:insert( Kaori_P2 )
  Kaori_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/kaori/treetrunkMASK.png" )
  Kaori_P2:setMask( mask )

  Kaori_P2_2 = createImage("images/kaori/kaori-bottomleftleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_2:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_2 )
  Kaori_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/kaori/kaori-bottomleftleafclusterMask.png" )
  Kaori_P2_2:setMask( mask2 )

  Kaori_P2_3 = createImage("images/kaori/kaori-bottomrightleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_3:setFillColor(0.5)
  P2Kaori:insert( Kaori_P2_3 )
  Kaori_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/kaori/kaori-bottomrightleafclusterMASK.png" )
  Kaori_P2_3:setMask( mask3 )

  Kaori_P2_4 = createImage("images/kaori/kaori-smalltoprightleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_4:setFillColor(0.4)
  P2Kaori:insert( Kaori_P2_4 )
  Kaori_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/kaori/kaori-smalltoprightleafclusterMASK.png" )
  Kaori_P2_4:setMask( mask4 )

  Kaori_P2_5 = createImage("images/kaori/kaori-topleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_5:setFillColor(0.7)
  P2Kaori:insert( Kaori_P2_5 )
  Kaori_P2_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/kaori/kaori-topleafclusterMASK.png" )
  Kaori_P2_5:setMask( mask5 )

  Kaori_P2_6 = createImage("images/kaori/kaori-topleftleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_6:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_6 )
  Kaori_P2_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/kaori/kaori-topleftleafclusterMask.png" )
  Kaori_P2_6:setMask( mask6 )

  Kaori_P2_7 = createImage("images/kaori/kaori-toprightleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_7:setFillColor(0.4)
  P2Kaori:insert( Kaori_P2_7 )
  Kaori_P2_7:scale(0.60, 0.60)
  mask7 = graphics.newMask( "images/kaori/kaori-toprightleafclusterMask.png" )
  Kaori_P2_7:setMask( mask7 )

  Kaori_P2_8 = createImage("images/kaori/kaori-verybottomleftleafcluster.png", 400, 400, display.contentCenterX-380, display.contentCenterY+1295)
  Kaori_P2_8:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_8 )
  Kaori_P2_8:scale(0.60, 0.60)
  mask8 = graphics.newMask( "images/kaori/kaori-verybottomleftleafclusterMASK.png" )
  Kaori_P2_8:setMask( mask8 )

  Kaori_P2_Text = display.newText( "Kaori",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Kaori:insert( Kaori_P2_Text )

  return createKaoriP2

end

-- Spawn Magnolia
function createMagnoliaP2 ()

  P2Magnolia = display.newGroup();

  Magnolia_P2 = createImage("images/magnolia/mag trunk.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2:setFillColor(0.6)
  P2Magnolia:insert( Magnolia_P2 )
  Magnolia_P2:scale(1, 1)
  mask = graphics.newMask( "images/magnolia/mag trunkMASK.png" )
  Magnolia_P2:setMask( mask )
  Magnolia_P2:scale(0.70, 0.70)

  Magnolia_P2_2 = createImage("images/magnolia/mag leafchunk1.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2_2:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_2 )
  Magnolia_P2_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/magnolia/mag leafchunk1MASK.png" )
  Magnolia_P2_2:setMask( mask2 )

  Magnolia_P2_3 = createImage("images/magnolia/mag leafchunk2.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2_3:setFillColor(0.8)
  P2Magnolia:insert( Magnolia_P2_3 )
  Magnolia_P2_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/magnolia/mag leafchunk2MASK.png" )
  Magnolia_P2_3:setMask( mask3 )

  Magnolia_P2_4 = createImage("images/magnolia/mag leafchunk3.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2_4:setFillColor(0.6)
  P2Magnolia:insert( Magnolia_P2_4 )
  Magnolia_P2_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/magnolia/mag leafchunk3MASK.png" )
  Magnolia_P2_4:setMask( mask4 )

  Magnolia_P2_5 = createImage("images/magnolia/mag leafchunk4.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2_5:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_5 )
  Magnolia_P2_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/magnolia/mag leafchunk4MASK.png" )
  Magnolia_P2_5:setMask( mask5 )

  Magnolia_P2_6 = createImage("images/magnolia/mag leafchunk5.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2_6:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_6 )
  Magnolia_P2_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/magnolia/mag leafchunk5MASK.png" )
  Magnolia_P2_6:setMask( mask6 )

  Magnolia_P2_7 = createImage("images/magnolia/mag leafchunk6.png", 400, 700, display.contentCenterX-355, display.contentCenterY+1235)
  Magnolia_P2_7:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_7 )
  Magnolia_P2_7:scale(0.70, 0.70)
  mask7 = graphics.newMask( "images/magnolia/mag leafchunk6MASK.png" )
  Magnolia_P2_7:setMask( mask7 )

  Magnolia_P2_Text = display.newText( "Magnolia",display.contentCenterX-390, display.contentCenterY+1460, native.systemFont, 40 )
  P2Magnolia:insert( Magnolia_P2_Text )

  return createMagnoliaP2

end

-----------------------------------------
-- Creates colouring palette and buttons.
-----------------------------------------
function colouringSetupP2()

  P2Colouring = display.newGroup();

  local RockColourP2 = display.newImageRect( "images/Wood Display.png", 890, 1320)
  RockColourP2.x = display.contentCenterX-470
  RockColourP2.y = display.contentCenterY+1130
  P2Colouring:insert( RockColourP2 )

  -----------------------------------
  -- Creates palette option buttons
  -----------------------------------

  P2NormalSelect = display.newImageRect( "images/paintbuttons/NormalButton.png", 140, 140)
  P2NormalSelect.x = display.contentCenterX-820
  P2NormalSelect.y = display.contentCenterY+1050
  P2Colouring:insert( P2NormalSelect )

  P2RainbowSelect = display.newImageRect( "images/paintbuttons/Rainbow/RainbowButton.png", 140, 140)
  P2RainbowSelect.x = display.contentCenterX-720
  P2RainbowSelect.y = display.contentCenterY+1050
  P2Colouring:insert( P2RainbowSelect )

  P2StampSelect = display.newImageRect( "images/paintbuttons/StampButton.png", 140, 140)
  P2StampSelect.x = display.contentCenterX-620
  P2StampSelect.y = display.contentCenterY+1050
  P2Colouring:insert( P2StampSelect )

  --------------------------------------
  -- creates normal colour selection buttons.
  --------------------------------------
  P2normalPalette = display.newGroup();

  btn_new7 = display.newImageRect( "images/paintbuttons/paletteButton1.png", 130, 130)
  btn_new7.color = { 0.3, 0.5, 0.5 }
  btn_new7.x = display.contentCenterX-795
  btn_new7.y = display.contentCenterY+1250
  btn_new7.name = "P2Button"
  P2normalPalette:insert( btn_new7 )

  btn_new8 = display.newImageRect( "images/paintbuttons/paletteButton2.png", 130, 130)
  btn_new8.color = { 0.3, 0.5, 0.1 }
  btn_new8.x = display.contentCenterX-665
  btn_new8.y = display.contentCenterY+1250
  btn_new8.name = "P2Button"
  P2normalPalette:insert( btn_new8 )

  btn_new9 = display.newImageRect( "images/paintbuttons/paletteButton3.png", 130, 130)
  btn_new9.color = { 0.7, 0.8, 0 }
  btn_new9.x = display.contentCenterX-795
  btn_new9.y = display.contentCenterY+1380
  btn_new9.name = "P2Button"
  P2normalPalette:insert( btn_new9 )

  btn_new10 = display.newImageRect( "images/paintbuttons/paletteButton4.png", 130, 130)
  btn_new10.color = { 0.5, 0.3, 0.2 }
  btn_new10.x = display.contentCenterX-665
  btn_new10.y = display.contentCenterY+1380
  btn_new10.name = "P2Button"
  P2normalPalette:insert( btn_new10 )

  btn_new11 = display.newImageRect( "images/paintbuttons/paletteButton5.png", 130, 130)
  btn_new11.color = { 0.8, 1, 0.6 }
  btn_new11.x = display.contentCenterX-795
  btn_new11.y = display.contentCenterY+1510
  btn_new11.name = "P2Button"
  P2normalPalette:insert( btn_new11 )

  btn_new12 = display.newImageRect( "images/paintbuttons/paletteButton6.png", 130, 130)
  btn_new12.color = { 0.8, 0.7, 0.6 }
  btn_new12.x = display.contentCenterX-665
  btn_new12.y = display.contentCenterY+1510
  btn_new12.name = "P2Button"
  P2normalPalette:insert( btn_new12 )

  P2NormalSelectGlow = display.newImageRect( "images/paintbuttons/PaletteSelectionGlow.png", 140, 140)
  P2NormalSelectGlow.x = display.contentCenterX-820
  P2NormalSelectGlow.y = display.contentCenterY+1050
  P2normalPalette:insert( P2NormalSelectGlow )

  P2Colouring:insert( P2normalPalette )

  --------------------------------------
  -- creates rainbow colour selection buttons.
  --------------------------------------
  P2rainbowPalette = display.newGroup();

  btn_rainbow7 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton1.png", 130, 130)
  btn_rainbow7.color = { 1, 0.3, 0.5}
  btn_rainbow7.x = display.contentCenterX-795
  btn_rainbow7.y = display.contentCenterY+1250
  btn_rainbow7.name = "P2Button"
  P2rainbowPalette:insert( btn_rainbow7 )

  btn_rainbow8 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton2.png", 130, 130)
  btn_rainbow8.color = { 0.3, 0.5, 1 }
  btn_rainbow8.x = display.contentCenterX-665
  btn_rainbow8.y = display.contentCenterY+1250
  btn_rainbow8.name = "P2Button"
  P2rainbowPalette:insert( btn_rainbow8 )

  btn_rainbow9 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton3.png", 130, 130)
  btn_rainbow9.color = { 0.9, 0.3, 1 }
  btn_rainbow9.x = display.contentCenterX-795
  btn_rainbow9.y = display.contentCenterY+1380
  btn_rainbow9.name = "P2Button"
  P2rainbowPalette:insert( btn_rainbow9 )

  btn_rainbow10 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton4.png", 130, 130)
  btn_rainbow10.color = { 1, 1, 0.5 }
  btn_rainbow10.x = display.contentCenterX-665
  btn_rainbow10.y = display.contentCenterY+1380
  btn_rainbow10.name = "P2Button"
  P2rainbowPalette:insert( btn_rainbow10 )

  btn_rainbow11 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton5.png", 130, 130)
  btn_rainbow11.color = { 1, 0.7, 0.5 }
  btn_rainbow11.x = display.contentCenterX-795
  btn_rainbow11.y = display.contentCenterY+1510
  btn_rainbow11.name = "P2Button"
  P2rainbowPalette:insert( btn_rainbow11 )

  btn_rainbow12 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton6.png", 130, 130)
  btn_rainbow12.color = { 0.5, 0.6, 0.4 }
  btn_rainbow12.x = display.contentCenterX-665
  btn_rainbow12.y = display.contentCenterY+1510
  btn_rainbow12.name = "P2Button"
  P2rainbowPalette:insert( btn_rainbow12 )

  P2RainbowSelectGlow = display.newImageRect( "images/paintbuttons/PaletteSelectionGlow.png", 140, 140)
  P2RainbowSelectGlow.x = display.contentCenterX-720
  P2RainbowSelectGlow.y = display.contentCenterY+1050
  P2rainbowPalette:insert( P2RainbowSelectGlow )

  P2Colouring:insert( P2rainbowPalette )
  toggleVisibility( P2rainbowPalette )

  --------------------------------------
  -- creates Stamp selection buttons.
  --------------------------------------

  P2stampPalette = display.newGroup();

  btn_outlineStamp5 = display.newImageRect( "images/stamps/leaf clicked.png", 130, 130)
  btn_outlineStamp5.x = display.contentCenterX-795
  btn_outlineStamp5.y = display.contentCenterY+1250
  P2stampPalette:insert( btn_outlineStamp5 )

  btn_stamp5 = display.newImageRect( "images/stamps/Stamp1.png", 130, 130)
  btn_stamp5.x = display.contentCenterX-795
  btn_stamp5.y = display.contentCenterY+1250
  btn_stamp5.Name = "P2Stamp1"
  P2stampPalette:insert( btn_stamp5 )

  btn_outlineStamp6 = display.newImageRect( "images/stamps/stick clicked.png", 130, 130)
  btn_outlineStamp6.x = display.contentCenterX-795
  btn_outlineStamp6.y = display.contentCenterY+1380
  P2stampPalette:insert( btn_outlineStamp6 )

  btn_stamp6 = display.newImageRect( "images/stamps/Stamp2.png", 130, 130)
  btn_stamp6.x = display.contentCenterX-795
  btn_stamp6.y = display.contentCenterY+1380
  btn_stamp6.Name = "P2Stamp2"
  P2stampPalette:insert( btn_stamp6 )

  btn_outlineStamp7 = display.newImageRect( "images/stamps/weta clicked.png", 130, 130)
  btn_outlineStamp7.x = display.contentCenterX-665
  btn_outlineStamp7.y = display.contentCenterY+1250
  P2stampPalette:insert( btn_outlineStamp7 )

  btn_stamp7 = display.newImageRect( "images/stamps/Stamp3.png", 130, 130)
  btn_stamp7.x = display.contentCenterX-665
  btn_stamp7.y = display.contentCenterY+1250
  btn_stamp7.Name = "P2Stamp3"
  P2stampPalette:insert( btn_stamp7 )

  -- Special Stamp

  P2SpecialSelectionsheetData = { width =600, height =600, numFrames=9, sheetContentWidth=5400, sheetContentHeight=600 } 
  P2SpecialSelectionSheet1 = graphics.newImageSheet("images/stamps/special stamps/specialSelectionSprite.png", P2SpecialSelectionsheetData)
  P2SpecialSelectedsheetData = { width =600, height =600, numFrames=9, sheetContentWidth=5400, sheetContentHeight=600 } 
  P2SpecialSelectedSheet1 = graphics.newImageSheet("images/stamps/special stamps/specialSelectedSprite.png", P2SpecialSelectedsheetData)
  P2SpecialData = {
  {name="Selection", sheet=P2SpecialSelectionSheet1, frames={9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=500},
  {name="Selected", sheet=P2SpecialSelectedSheet1, frames={9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=500}
  }
  
  btn_outlineStamp8 = display.newSprite(P2SpecialSelectedSheet1, P2SpecialData)
  btn_outlineStamp8.x = display.contentCenterX-665
  btn_outlineStamp8.y = display.contentCenterY+1380
  btn_outlineStamp8:scale(0.25, 0.25)
  P2stampPalette:insert( btn_outlineStamp8 )
  
  btn_stamp8 = display.newSprite(P2SpecialSelectionSheet1, P2SpecialData)
  btn_stamp8.x = display.contentCenterX-665
  btn_stamp8.y = display.contentCenterY+1380
  btn_stamp8.Name = "P2Stamp4"
  btn_stamp8:scale(0.25, 0.25)
  P2stampPalette:insert( btn_stamp8 )

  P2StampSelectGlow = display.newImageRect( "images/paintbuttons/PaletteSelectionGlow.png", 140, 140)
  P2StampSelectGlow.x = display.contentCenterX-620
  P2StampSelectGlow.y = display.contentCenterY+1050
  P2stampPalette:insert( P2StampSelectGlow )

  P2Colouring:insert( P2stampPalette )
  toggleVisibility( P2stampPalette )

  ---------------------------------------------------------------------------------------------
  -- creates done buttons for when you're finished colouring, set to invisible on level start.
  ---------------------------------------------------------------------------------------------
  donebtn_spawnFlaxP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnFlaxP2.x = display.contentCenterX-390
  donebtn_spawnFlaxP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFlaxP2 )
  P2Colouring:insert( donebtn_spawnFlaxP2 )

  donebtn_spawnFernP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnFernP2.x = display.contentCenterX-390
  donebtn_spawnFernP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFernP2 )
  P2Colouring:insert( donebtn_spawnFernP2 )

  donebtn_spawnHorsetailP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnHorsetailP2.x = display.contentCenterX-390
  donebtn_spawnHorsetailP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnHorsetailP2 )
  P2Colouring:insert( donebtn_spawnHorsetailP2 )

  donebtn_spawnPalmP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnPalmP2.x = display.contentCenterX-390
  donebtn_spawnPalmP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPalmP2 )
  P2Colouring:insert( donebtn_spawnPalmP2 )

  donebtn_spawnCycadP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnCycadP2.x = display.contentCenterX-390
  donebtn_spawnCycadP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnCycadP2 )
  P2Colouring:insert( donebtn_spawnCycadP2 )

  donebtn_spawnTreeFernP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnTreeFernP2.x = display.contentCenterX-390
  donebtn_spawnTreeFernP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnTreeFernP2 )
  P2Colouring:insert( donebtn_spawnTreeFernP2 )

  donebtn_spawnPineP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnPineP2.x = display.contentCenterX-390
  donebtn_spawnPineP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPineP2 )
  P2Colouring:insert( donebtn_spawnPineP2 )

  donebtn_spawnKaoriP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnKaoriP2.x = display.contentCenterX-390
  donebtn_spawnKaoriP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnKaoriP2 )
  P2Colouring:insert( donebtn_spawnKaoriP2 )

  donebtn_spawnMagnoliaP2 = display.newImageRect( "images/Done Button Template.png", 200, 100)
  donebtn_spawnMagnoliaP2.x = display.contentCenterX-390
  donebtn_spawnMagnoliaP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnMagnoliaP2 )
  P2Colouring:insert( donebtn_spawnMagnoliaP2 )

  -----------------------------------------------------------------------------------------------
  -- creates compost buttons for if you want to change plants, set to invisible on level start.
  -----------------------------------------------------------------------------------------------
  compostButtonFlaxP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonFlaxP2.x = display.contentCenterX-132
  compostButtonFlaxP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonFlaxP2 )
  P2Colouring:insert( compostButtonFlaxP2 )

  compostButtonFernP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonFernP2.x = display.contentCenterX-132
  compostButtonFernP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonFernP2 )
  P2Colouring:insert( compostButtonFernP2 )

  compostButtonHorsetailP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonHorsetailP2.x = display.contentCenterX-132
  compostButtonHorsetailP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonHorsetailP2 )
  P2Colouring:insert( compostButtonHorsetailP2 )

  compostButtonPalmP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonPalmP2.x = display.contentCenterX-132
  compostButtonPalmP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonPalmP2 )
  P2Colouring:insert( compostButtonPalmP2 )

  compostButtonCycadP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonCycadP2.x = display.contentCenterX-132
  compostButtonCycadP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonCycadP2 )
  P2Colouring:insert( compostButtonCycadP2 )

  compostButtonTreeFernP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonTreeFernP2.x = display.contentCenterX-132
  compostButtonTreeFernP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonTreeFernP2 )
  P2Colouring:insert( compostButtonTreeFernP2 )

  compostButtonPineP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonPineP2.x = display.contentCenterX-132
  compostButtonPineP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonPineP2 )
  P2Colouring:insert( compostButtonPineP2 )

  compostButtonKaoriP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonKaoriP2.x = display.contentCenterX-132
  compostButtonKaoriP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonKaoriP2 )
  P2Colouring:insert( compostButtonKaoriP2 )

  compostButtonMagnoliaP2 = display.newImageRect( "images/bush.png", 90, 90)
  compostButtonMagnoliaP2.x = display.contentCenterX-132
  compostButtonMagnoliaP2.y = display.contentCenterY+1052
  toggleVisibility( compostButtonMagnoliaP2 )
  P2Colouring:insert( compostButtonMagnoliaP2 )

end

-- Expanding rings for first plants
function P2Rings ()

  P2RingsheetData = { width =806.5, height =836, numFrames=14, sheetContentWidth=11291, sheetContentHeight=836 } 
  P2RingSheet1 = graphics.newImageSheet("images/ringGlow Sprite.png", P2RingsheetData)
  P2RingData = {
  {name="RingExpand", sheet=P2RingSheet1, frames={14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=1000}
  }

  P2SelectionRing1 = display.newSprite(P2RingSheet1, P2RingData)
  P2SelectionRing1.x = display.contentCenterX-750
  P2SelectionRing1.y = display.contentCenterY+1720
  P2SelectionRing1:scale(0.5, 0.6)
  P2Select:insert( P2SelectionRing1 )

  P2SelectionRing2 = display.newSprite(P2RingSheet1, P2RingData)
  P2SelectionRing2.x = display.contentCenterX-500
  P2SelectionRing2.y = display.contentCenterY+1720
  P2SelectionRing2:scale(0.5, 0.6)
  P2Select:insert( P2SelectionRing2 )

  P2SelectionRing3 = display.newSprite(P2RingSheet1, P2RingData)
  P2SelectionRing3.x = display.contentCenterX-240
  P2SelectionRing3.y = display.contentCenterY+1720
  P2SelectionRing3:scale(0.5, 0.6)
  P2Select:insert( P2SelectionRing3 )

  P2ColouringRing = display.newSprite(P2RingSheet1, P2RingData)
  P2ColouringRing.x = display.contentCenterX-390
  P2ColouringRing.y = display.contentCenterY+1345
  P2ColouringRing:scale(0.5, 0.6)
  P2Colouring:insert( P2ColouringRing )
end

function P2HideRings ()
  P2SelectionRing1.isVisible = false
  P2SelectionRing2.isVisible = false
  P2SelectionRing3.isVisible = false
  P2ColouringRing.isVisible = false 
end

function P2ShowRings ()
  P2SelectionRing1.isVisible = true
  P2SelectionRing2.isVisible = true
  P2SelectionRing3.isVisible = true
  P2ColouringRing.isVisible = true 
end

  












