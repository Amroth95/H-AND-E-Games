
------------------------------------
-- Creates plant selection buttons.
------------------------------------
function selectionSetupP2 ()

  P2Select = display.newGroup();

  RockSelectP2 = display.newImageRect( "images/Wood Display Select.png", 890, 1200)
  RockSelectP2.x = display.contentCenterX-520
  RockSelectP2.y = display.contentCenterY+750
  P2Select:insert( RockSelectP2 )

  -- Small Plant Buttons
  btn_spawnFlaxP2 = display.newImageRect( "images/selectbuttons/Select Flax Button.png", 100, 100)
  btn_spawnFlaxP2.x = display.contentCenterX-828
  btn_spawnFlaxP2.y = display.contentCenterY+995
  P2Select:insert( btn_spawnFlaxP2 )

  btn_spawnFernP2 = display.newImageRect( "images/selectbuttons/Select Fern Button.png", 100, 100)
  btn_spawnFernP2.x = display.contentCenterX-528
  btn_spawnFernP2.y = display.contentCenterY+995
  P2Select:insert( btn_spawnFernP2 )

  btn_spawnHorsetailP2 = display.newImageRect( "images/horsetail/horsegrassseed.png", 130, 130)
  btn_spawnHorsetailP2.x = display.contentCenterX-228
  btn_spawnHorsetailP2.y = display.contentCenterY+995
  P2Select:insert( btn_spawnHorsetailP2 )

  -- Meduim Plant Buttons
  P2MediumPlants = display.newGroup();

  btn_spawnPalmP2 = display.newImageRect( "images/selectbuttons/Select Palm Button.png", 100, 100)
  btn_spawnPalmP2.x = display.contentCenterX-828
  btn_spawnPalmP2.y = display.contentCenterY+895
  P2MediumPlants:insert( btn_spawnPalmP2 )

  btn_spawnCycadP2 = display.newImageRect( "images/cycad/cycad seed.png", 100, 100)
  btn_spawnCycadP2.x = display.contentCenterX-528
  btn_spawnCycadP2.y = display.contentCenterY+895
  P2MediumPlants:insert( btn_spawnCycadP2 )

  btn_spawnTreeFernP2 = display.newImageRect( "images/selectbuttons/Select Palm Button.png", 100, 100)
  btn_spawnTreeFernP2.x = display.contentCenterX-228
  btn_spawnTreeFernP2.y = display.contentCenterY+895
  P2MediumPlants:insert( btn_spawnTreeFernP2 )

  P2Select:insert( P2MediumPlants )
  toggleVisibility( P2MediumPlants )

  -- Large Plant Buttons
  P2LargePlants = display.newGroup();

  btn_spawnPineP2 = display.newImageRect( "images/selectbuttons/Select Pine Button.png", 100, 100)
  btn_spawnPineP2.x = display.contentCenterX-828
  btn_spawnPineP2.y = display.contentCenterY+795
  P2LargePlants:insert( btn_spawnPineP2 )

  btn_spawnKaoriP2 = display.newImageRect( "images/kaori/kaoriseed-forest.png", 130, 130)
  btn_spawnKaoriP2.x = display.contentCenterX-528
  btn_spawnKaoriP2.y = display.contentCenterY+795
  P2LargePlants:insert( btn_spawnKaoriP2 )

  btn_spawnMagnoliaP2 = display.newImageRect( "images/magnolia/magseed.png", 130, 130)
  btn_spawnMagnoliaP2.x = display.contentCenterX-228
  btn_spawnMagnoliaP2.y = display.contentCenterY+795
  P2LargePlants:insert( btn_spawnMagnoliaP2 )

  P2Select:insert( P2LargePlants )
  toggleVisibility( P2LargePlants )

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

  flax_P2 = createImage("images/plant1/plant1.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  flax_P2:setFillColor(0.6)
  P2Flax:insert( flax_P2 )
  flax_P2:scale(0.70, 0.70)
  mask = graphics.newMask( "images/plant1/flax1.png" )
  flax_P2:setMask( mask )

  flax_P2_2 = createImage("images/plant1/plant2.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  flax_P2_2:setFillColor(0.7)
  P2Flax:insert( flax_P2_2 )
  flax_P2_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/plant1/flax2.png" )
  flax_P2_2:setMask( mask2 )

  flax_P2_3 = createImage("images/plant1/plant3.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  flax_P2_3:setFillColor(0.8)
  P2Flax:insert( flax_P2_3 )
  flax_P2_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/plant1/flax3.png" )
  flax_P2_3:setMask( mask3 )

  flax_P2_4 = createImage("images/plant1/plant4.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  flax_P2_4:setFillColor(0.6)
  P2Flax:insert( flax_P2_4 )
  flax_P2_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/plant1/flax4.png" )
  flax_P2_4:setMask( mask4 )

  flax_P2_5 = createImage("images/plant1/plant5.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  flax_P2_5:setFillColor(0.7)
  P2Flax:insert( flax_P2_5 )
  flax_P2_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/plant1/flax5.png" )
  flax_P2_5:setMask( mask5 )

  flax_P2_6 = createImage("images/plant1/plant6.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  flax_P2_6:setFillColor(0.7)
  P2Flax:insert( flax_P2_6 )
  flax_P2_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/plant1/flax6.png" )
  flax_P2_6:setMask( mask6 )

  return createFlaxP2

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

  fern_P2_4 = createImage("images/plant3/plant4.png", 400, 400, display.contentCenterX-725, display.contentCenterY+1295)
  fern_P2_4:setFillColor(0.6)
  P2Fern:insert( fern_P2_4 )
  fern_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant3/fern4.png" )
  fern_P2_4:setMask( mask4 )

  return createFernP2

end

-- Create Horsetail
function createHorsetailP2 ()  

  P2Horsetail = display.newGroup();

  Horsetail_P2 = createImage("images/horsetail/horsetailstalk 1.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2:setFillColor(0.6)
  P2Horsetail:insert( Horsetail_P2 )
  Horsetail_P2:scale(0.70, 0.70)
  mask = graphics.newMask( "images/horsetail/horsetailstalk 1 MASK.png" )
  Horsetail_P2:setMask( mask )

  Horsetail_P2_2 = createImage("images/horsetail/horsetailstalk 2.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_2:setFillColor(0.7)
  P2Horsetail:insert( Horsetail_P2_2 )
  Horsetail_P2_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/horsetail/horsetailstalk 2 MASK.png" )
  Horsetail_P2_2:setMask( mask2 )

  Horsetail_P2_3 = createImage("images/horsetail/horsetailstalk 3.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_3:setFillColor(0.8)
  P2Horsetail:insert( Horsetail_P2_3 )
  Horsetail_P2_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/horsetail/horsetailstalk 3 MASK.png" )
  Horsetail_P2_3:setMask( mask3 )

  Horsetail_P2_4 = createImage("images/horsetail/horsetailstalk 4.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_4:setFillColor(0.6)
  P2Horsetail:insert( Horsetail_P2_4 )
  Horsetail_P2_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/horsetail/horsetailstalk 4 MASK.png" )
  Horsetail_P2_4:setMask( mask4 )

  Horsetail_P2_5 = createImage("images/horsetail/horsetailstalk 5.png", 400, 700, display.contentCenterX-720, display.contentCenterY+1295)
  Horsetail_P2_5:setFillColor(0.7)
  P2Horsetail:insert( Horsetail_P2_5 )
  Horsetail_P2_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/horsetail/horsetailstalk 5 MASK.png" )
  Horsetail_P2_5:setMask( mask5 )

  return createHorsetailP2

end

------------------
-- Medium Plants
------------------

-- Spawn Palm
function createPalmP2 ()

  P2Palm = display.newGroup();

  palm_P2 = createImage("images/plant2/plant3.png", 400, 400, display.contentCenterX-740, display.contentCenterY+1295)
  palm_P2:setFillColor(0.7)
  P2Palm:insert( palm_P2 )
  palm_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant2/palm3.png" )
  palm_P2:setMask( mask )

  palm_P2_2 = createImage("images/plant2/plant2.png", 400, 400, display.contentCenterX-740, display.contentCenterY+1295)
  palm_P2_2:setFillColor(0.6)
  P2Palm:insert( palm_P2_2 )
  palm_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant2/palm2.png" )
  palm_P2_2:setMask( mask2 )

  palm_P2_3 = createImage("images/plant2/plant1.png", 400, 400, display.contentCenterX-740, display.contentCenterY+1295)
  palm_P2_3:setFillColor(0.5)
  P2Palm:insert( palm_P2_3 )
  palm_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant2/palm1.png" )
  palm_P2_3:setMask( mask3 )

  return createPalmP2

end

-- Spawn Cycad
function createCycadP2 ()

  P2Cycad = display.newGroup();

  Cycad_P2 = createImage("images/cycad/cycad trunk.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  Cycad_P2:setFillColor(0.7)
  P2Cycad:insert( Cycad_P2 )
  Cycad_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/cycad/cycad trunk Mask.png" )
  Cycad_P2:setMask( mask )

  Cycad_P2_2 = createImage("images/cycad/left leaf.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  Cycad_P2_2:setFillColor(0.6)
  P2Cycad:insert( Cycad_P2_2 )
  Cycad_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/cycad/left leaf Mask.png" )
  Cycad_P2_2:setMask( mask2 )

  Cycad_P2_3 = createImage("images/cycad/right leaf.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  Cycad_P2_3:setFillColor(0.5)
  P2Cycad:insert( Cycad_P2_3 )
  Cycad_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/cycad/right leaf Mask.png" )
  Cycad_P2_3:setMask( mask3 )

  Cycad_P2_4 = createImage("images/cycad/cycad mid left leaf.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  Cycad_P2_4:setFillColor(0.6)
  P2Cycad:insert( Cycad_P2_4 )
  Cycad_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/cycad/cycad mid left leaf Mask.png" )
  Cycad_P2_4:setMask( mask4 )

  Cycad_P2_5 = createImage("images/cycad/cycad mid right leaf.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  Cycad_P2_5:setFillColor(0.5)
  P2Cycad:insert( Cycad_P2_5 )
  Cycad_P2_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/cycad/cycad mid right leaf Mask.png" )
  Cycad_P2_5:setMask( mask5 )

  return createCycadP2

end

-- Spawn Tree Fern
function createTreeFernP2 ()

  P2TreeFern = display.newGroup();

  TreeFern_P2 = createImage("images/tree fern/tree fern trunk.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2:setFillColor(0.7)
  P2TreeFern:insert( TreeFern_P2 )
  TreeFern_P2:scale(0.90, 0.90)
  mask = graphics.newMask( "images/tree fern/TreeFern trunk Mask.png" )
  TreeFern_P2:setMask( mask )

  TreeFern_P2_2 = createImage("images/tree fern/tree fern dead top of trunk leaves.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_2:setFillColor(0.6)
  P2TreeFern:insert( TreeFern_P2_2 )
  TreeFern_P2_2:scale(0.90, 0.90)
  mask2 = graphics.newMask( "images/tree fern/tree fern dead top of trunk leaves Mask.png" )
  TreeFern_P2_2:setMask( mask2 )

  TreeFern_P2_3 = createImage("images/tree fern/tree fern right leaf 1.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_3:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_3 )
  TreeFern_P2_3:scale(0.90, 0.90)
  mask3 = graphics.newMask( "images/tree fern/tree fern right leaf 1 Mask.png" )
  TreeFern_P2_3:setMask( mask3 )

  TreeFern_P2_4 = createImage("images/tree fern/tree fern right leaf 2.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_4:setFillColor(0.6)
  P2TreeFern:insert( TreeFern_P2_4 )
  TreeFern_P2_4:scale(0.90, 0.90)
  mask4 = graphics.newMask( "images/tree fern/tree fern right leaf 2 Mask.png" )
  TreeFern_P2_4:setMask( mask4 )

  TreeFern_P2_5 = createImage("images/tree fern/tree fern right leaf 3.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_5:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_5 )
  TreeFern_P2_5:scale(0.90, 0.90)
  mask5 = graphics.newMask( "images/tree fern/tree fern right leaf 3 Mask.png" )
  TreeFern_P2_5:setMask( mask5 )

  TreeFern_P2_6 = createImage("images/tree fern/tree fern left leaf 1.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_6:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_6 )
  TreeFern_P2_6:scale(0.90, 0.90)
  mask6 = graphics.newMask( "images/tree fern/tree fern left leaf 1 Mask.png" )
  TreeFern_P2_6:setMask( mask6 )

  TreeFern_P2_7 = createImage("images/tree fern/tree fern left leaf 2.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_7:setFillColor(0.6)
  P2TreeFern:insert( TreeFern_P2_7 )
  TreeFern_P2_7:scale(0.90, 0.90)
  mask7 = graphics.newMask( "images/tree fern/tree fern left leaf 2 Mask.png" )
  TreeFern_P2_7:setMask( mask7 )

  TreeFern_P2_8 = createImage("images/tree fern/tree fern left leaf 3.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_8:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_8 )
  TreeFern_P2_8:scale(0.90, 0.90)
  mask8 = graphics.newMask( "images/tree fern/tree fern left leaf 3 Mask.png" )
  TreeFern_P2_8:setMask( mask8 )

  TreeFern_P2_9 = createImage("images/tree fern/tree fern mid leaf.png", 400, 400, display.contentCenterX-720, display.contentCenterY+1295)
  TreeFern_P2_9:setFillColor(0.5)
  P2TreeFern:insert( TreeFern_P2_9 )
  TreeFern_P2_9:scale(0.90, 0.90)
  mask9 = graphics.newMask( "images/tree fern/tree fern mid leaf Mask.png" )
  TreeFern_P2_9:setMask( mask9 )

  return createTreeFernP2

end

-----------------
-- Large Plants
-----------------

function createPineP2 ()

  P2Pine = display.newGroup();

  pine_P2 = createImage("images/plant4/plant1.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2:setFillColor(0.6)
  P2Pine:insert( pine_P2 )
  pine_P2:scale(0.35, 0.35)
  mask = graphics.newMask( "images/plant4/pine1.png" )
  pine_P2:setMask( mask )

  pine_P2_2 = createImage("images/plant4/plant2.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2_2:setFillColor(0.7)
  P2Pine:insert( pine_P2_2 )
  pine_P2_2:scale(0.35, 0.35)
  mask2 = graphics.newMask( "images/plant4/pine2.png" )
  pine_P2_2:setMask( mask2 )

  pine_P2_3 = createImage("images/plant4/plant3.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2_3:setFillColor(0.8)
  P2Pine:insert( pine_P2_3 )
  pine_P2_3:scale(0.35, 0.35)
  mask3 = graphics.newMask( "images/plant4/pine3.png" )
  pine_P2_3:setMask( mask3 )

  pine_P2_4 = createImage("images/plant4/plant4.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2_4:setFillColor(0.6)
  P2Pine:insert( pine_P2_4 )
  pine_P2_4:scale(0.35, 0.35)
  mask4 = graphics.newMask( "images/plant4/pine4.png" )
  pine_P2_4:setMask( mask4 )

  pine_P2_5 = createImage("images/plant4/plant5.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2_5:setFillColor(0.7)
  P2Pine:insert( pine_P2_5 )
  pine_P2_5:scale(0.35, 0.35)
  mask5 = graphics.newMask( "images/plant4/pine5.png" )
  pine_P2_5:setMask( mask5 )

  pine_P2_6 = createImage("images/plant4/plant6.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2_6:setFillColor(0.7)
  P2Pine:insert( pine_P2_6 )
  pine_P2_6:scale(0.35, 0.35)
  mask6 = graphics.newMask( "images/plant4/pine6.png" )
  pine_P2_6:setMask( mask6 )

  pine_P2_7 = createImage("images/plant4/plant7.png", 600, 1150, display.contentCenterX-730, display.contentCenterY+1195)
  pine_P2_7:setFillColor(0.7)
  P2Pine:insert( pine_P2_7 )
  pine_P2_7:scale(0.35, 0.35)
  mask7 = graphics.newMask( "images/plant4/pine7.png" )
  pine_P2_7:setMask( mask7 )

  return createPineP2

end

-- Spawn Kaori
function createKaoriP2 ()

  P2Kaori = display.newGroup();

  Kaori_P2 = createImage("images/kaori/treetrunk.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2:setFillColor(0.7)
  P2Kaori:insert( Kaori_P2 )
  Kaori_P2:scale(0.60, 0.60)
  mask = graphics.newMask( "images/kaori/treetrunkMASK.png" )
  Kaori_P2:setMask( mask )

  Kaori_P2_2 = createImage("images/kaori/kaori-bottomleftleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_2:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_2 )
  Kaori_P2_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/kaori/kaori-bottomleftleafclusterMask.png" )
  Kaori_P2_2:setMask( mask2 )

  Kaori_P2_3 = createImage("images/kaori/kaori-bottomrightleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_3:setFillColor(0.5)
  P2Kaori:insert( Kaori_P2_3 )
  Kaori_P2_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/kaori/kaori-bottomrightleafclusterMASK.png" )
  Kaori_P2_3:setMask( mask3 )

  Kaori_P2_4 = createImage("images/kaori/kaori-smalltoprightleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_4:setFillColor(0.4)
  P2Kaori:insert( Kaori_P2_4 )
  Kaori_P2_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/kaori/kaori-smalltoprightleafclusterMASK.png" )
  Kaori_P2_4:setMask( mask4 )

  Kaori_P2_5 = createImage("images/kaori/kaori-topleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_5:setFillColor(0.7)
  P2Kaori:insert( Kaori_P2_5 )
  Kaori_P2_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/kaori/kaori-topleafclusterMASK.png" )
  Kaori_P2_5:setMask( mask5 )

  Kaori_P2_6 = createImage("images/kaori/kaori-topleftleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_6:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_6 )
  Kaori_P2_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/kaori/kaori-topleftleafclusterMask.png" )
  Kaori_P2_6:setMask( mask6 )

  Kaori_P2_7 = createImage("images/kaori/kaori-toprightleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_7:setFillColor(0.4)
  P2Kaori:insert( Kaori_P2_7 )
  Kaori_P2_7:scale(0.60, 0.60)
  mask7 = graphics.newMask( "images/kaori/kaori-toprightleafclusterMask.png" )
  Kaori_P2_7:setMask( mask7 )

  Kaori_P2_8 = createImage("images/kaori/kaori-verybottomleftleafcluster.png", 400, 400, display.contentCenterX-735, display.contentCenterY+1295)
  Kaori_P2_8:setFillColor(0.6)
  P2Kaori:insert( Kaori_P2_8 )
  Kaori_P2_8:scale(0.60, 0.60)
  mask8 = graphics.newMask( "images/kaori/kaori-verybottomleftleafclusterMASK.png" )
  Kaori_P2_8:setMask( mask8 )

  return createKaoriP2

end

-- Spawn Magnolia
function createMagnoliaP2 ()

  P2Magnolia = display.newGroup();

  Magnolia_P2 = createImage("images/magnolia/mag trunk.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2:setFillColor(0.6)
  P2Magnolia:insert( Magnolia_P2 )
  Magnolia_P2:scale(1, 1)
  mask = graphics.newMask( "images/magnolia/mag trunkMASK.png" )
  Magnolia_P2:setMask( mask )
  Magnolia_P2:scale(0.70, 0.70)

  Magnolia_P2_2 = createImage("images/magnolia/mag leafchunk1.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_2:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_2 )
  Magnolia_P2_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/magnolia/mag leafchunk1MASK.png" )
  Magnolia_P2_2:setMask( mask2 )

  Magnolia_P2_3 = createImage("images/magnolia/mag leafchunk2.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_3:setFillColor(0.8)
  P2Magnolia:insert( Magnolia_P2_3 )
  Magnolia_P2_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/magnolia/mag leafchunk2MASK.png" )
  Magnolia_P2_3:setMask( mask3 )

  Magnolia_P2_4 = createImage("images/magnolia/mag leafchunk3.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_4:setFillColor(0.6)
  P2Magnolia:insert( Magnolia_P2_4 )
  Magnolia_P2_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/magnolia/mag leafchunk3MASK.png" )
  Magnolia_P2_4:setMask( mask4 )

  Magnolia_P2_5 = createImage("images/magnolia/mag leafchunk4.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_5:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_5 )
  Magnolia_P2_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/magnolia/mag leafchunk4MASK.png" )
  Magnolia_P2_5:setMask( mask5 )

  Magnolia_P2_6 = createImage("images/magnolia/mag leafchunk5.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_6:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_6 )
  Magnolia_P2_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/magnolia/mag leafchunk5MASK.png" )
  Magnolia_P2_6:setMask( mask6 )

  Magnolia_P2_7 = createImage("images/magnolia/mag leafchunk6.png", 400, 700, display.contentCenterX-725, display.contentCenterY+1245)
  Magnolia_P2_7:setFillColor(0.7)
  P2Magnolia:insert( Magnolia_P2_7 )
  Magnolia_P2_7:scale(0.70, 0.70)
  mask7 = graphics.newMask( "images/magnolia/mag leafchunk6MASK.png" )
  Magnolia_P2_7:setMask( mask7 )

  return createMagnoliaP2

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
  donebtn_spawnFlaxP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFlaxP2.x = display.contentCenterX-380
  donebtn_spawnFlaxP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFlaxP2 )
  P2Colouring:insert( donebtn_spawnFlaxP2 )

  donebtn_spawnFernP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFernP2.x = display.contentCenterX-380
  donebtn_spawnFernP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFernP2 )
  P2Colouring:insert( donebtn_spawnFernP2 )

  donebtn_spawnHorsetailP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnHorsetailP2.x = display.contentCenterX-380
  donebtn_spawnHorsetailP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnHorsetailP2 )
  P2Colouring:insert( donebtn_spawnHorsetailP2 )

  donebtn_spawnPalmP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnPalmP2.x = display.contentCenterX-380
  donebtn_spawnPalmP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPalmP2 )
  P2Colouring:insert( donebtn_spawnPalmP2 )

  donebtn_spawnCycadP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnCycadP2.x = display.contentCenterX-380
  donebtn_spawnCycadP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnCycadP2 )
  P2Colouring:insert( donebtn_spawnCycadP2 )

  donebtn_spawnTreeFernP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnTreeFernP2.x = display.contentCenterX-380
  donebtn_spawnTreeFernP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnTreeFernP2 )
  P2Colouring:insert( donebtn_spawnTreeFernP2 )

  donebtn_spawnPineP2 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnPineP2.x = display.contentCenterX-380
  donebtn_spawnPineP2.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPineP2 )
  P2Colouring:insert( donebtn_spawnPineP2 )

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

  -----------------------------------------------------------------------------------------------
  -- creates compost buttons for if you want to change plants, set to invisible on level start.
  -----------------------------------------------------------------------------------------------
  compostButtonFlaxP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFlaxP2.x = display.contentCenterX-640
  compostButtonFlaxP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFlaxP2 )
  P2Colouring:insert( compostButtonFlaxP2 )

  compostButtonFernP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFernP2.x = display.contentCenterX-640
  compostButtonFernP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFernP2 )
  P2Colouring:insert( compostButtonFernP2 )

  compostButtonHorsetailP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonHorsetailP2.x = display.contentCenterX-640
  compostButtonHorsetailP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonHorsetailP2 )
  P2Colouring:insert( compostButtonHorsetailP2 )

  compostButtonPalmP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPalmP2.x = display.contentCenterX-640
  compostButtonPalmP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPalmP2 )
  P2Colouring:insert( compostButtonPalmP2 )

  compostButtonCycadP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonCycadP2.x = display.contentCenterX-640
  compostButtonCycadP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonCycadP2 )
  P2Colouring:insert( compostButtonCycadP2 )

  compostButtonTreeFernP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonTreeFernP2.x = display.contentCenterX-640
  compostButtonTreeFernP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonTreeFernP2 )
  P2Colouring:insert( compostButtonTreeFernP2 )

  compostButtonPineP2 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPineP2.x = display.contentCenterX-640
  compostButtonPineP2.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPineP2 )
  P2Colouring:insert( compostButtonPineP2 )

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

end

  












