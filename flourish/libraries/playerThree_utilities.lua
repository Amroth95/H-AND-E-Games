
------------------------------------
-- Creates plant selection buttons.
------------------------------------
function selectionSetupP3 ()

  P3Select = display.newGroup();

  RockSelectP3 = display.newImageRect( "images/Wood Display Select.png", 890, 1200)
  RockSelectP3.x = display.contentCenterX+510
  RockSelectP3.y = display.contentCenterY+750
  P3Select:insert( RockSelectP3 )

  -- Small Plant Buttons
  btn_spawnFlaxP3 = display.newImageRect( "images/selectbuttons/Select Flax Button.png", 100, 100)
  btn_spawnFlaxP3.x = display.contentCenterX+228
  btn_spawnFlaxP3.y = display.contentCenterY+995
  P3Select:insert( btn_spawnFlaxP3 )

  btn_spawnFernP3 = display.newImageRect( "images/selectbuttons/Select Fern Button.png", 100, 100)
  btn_spawnFernP3.x = display.contentCenterX+528
  btn_spawnFernP3.y = display.contentCenterY+995
  P3Select:insert( btn_spawnFernP3 )

  btn_spawnHorsetailP3 = display.newImageRect( "images/horsetail/horsegrassseed.png", 130, 130)
  btn_spawnHorsetailP3.x = display.contentCenterX+828
  btn_spawnHorsetailP3.y = display.contentCenterY+995
  P3Select:insert( btn_spawnHorsetailP3 )

  -- Meduim Plant Buttons
  P3MediumPlants = display.newGroup();

  btn_spawnPalmP3 = display.newImageRect( "images/selectbuttons/Select Palm Button.png", 100, 100)
  btn_spawnPalmP3.x = display.contentCenterX+228
  btn_spawnPalmP3.y = display.contentCenterY+895
  P3MediumPlants:insert( btn_spawnPalmP3 )

  btn_spawnCycadP3 = display.newImageRect( "images/cycad/cycad seed.png", 100, 100)
  btn_spawnCycadP3.x = display.contentCenterX+528
  btn_spawnCycadP3.y = display.contentCenterY+895
  P3MediumPlants:insert( btn_spawnCycadP3 )

  btn_spawnTreeFernP3 = display.newImageRect( "images/selectbuttons/Select Palm Button.png", 100, 100)
  btn_spawnTreeFernP3.x = display.contentCenterX+828
  btn_spawnTreeFernP3.y = display.contentCenterY+895
  P3MediumPlants:insert( btn_spawnTreeFernP3 )

  P3Select:insert( P3MediumPlants )
  toggleVisibility( P3MediumPlants )

  -- Large Plant Buttons
  P3LargePlants = display.newGroup();

  btn_spawnPineP3 = display.newImageRect( "images/selectbuttons/Select Pine Button.png", 100, 100)
  btn_spawnPineP3.x = display.contentCenterX+228
  btn_spawnPineP3.y = display.contentCenterY+795
  P3LargePlants:insert( btn_spawnPineP3 )

  btn_spawnKaoriP3 = display.newImageRect( "images/kaori/kaoriseed-forest.png", 130, 130)
  btn_spawnKaoriP3.x = display.contentCenterX+528
  btn_spawnKaoriP3.y = display.contentCenterY+795
  P3LargePlants:insert( btn_spawnKaoriP3 )

  btn_spawnMagnoliaP3 = display.newImageRect( "images/magnolia/magseed.png", 130, 130)
  btn_spawnMagnoliaP3.x = display.contentCenterX+828
  btn_spawnMagnoliaP3.y = display.contentCenterY+795
  P3LargePlants:insert( btn_spawnMagnoliaP3 )

  P3Select:insert( P3LargePlants )
  toggleVisibility( P3LargePlants )

end

---------------------------------
--functions for Spawning Plants.
---------------------------------

-----------------
-- Small Plants
-----------------

-- Spawn Flax
function createFlaxP3 ()  

  P3Flax = display.newGroup();

  flax_P3 = createImage("images/plant1/plant1.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  flax_P3:setFillColor(0.6)
  P3Flax:insert( flax_P3 )
  flax_P3:scale(0.70, 0.70)
  mask = graphics.newMask( "images/plant1/flax1.png" )
  flax_P3:setMask( mask )

  flax_P3_2 = createImage("images/plant1/plant2.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  flax_P3_2:setFillColor(0.7)
  P3Flax:insert( flax_P3_2 )
  flax_P3_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/plant1/flax2.png" )
  flax_P3_2:setMask( mask2 )

  flax_P3_3 = createImage("images/plant1/plant3.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  flax_P3_3:setFillColor(0.8)
  P3Flax:insert( flax_P3_3 )
  flax_P3_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/plant1/flax3.png" )
  flax_P3_3:setMask( mask3 )

  flax_P3_4 = createImage("images/plant1/plant4.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  flax_P3_4:setFillColor(0.6)
  P3Flax:insert( flax_P3_4 )
  flax_P3_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/plant1/flax4.png" )
  flax_P3_4:setMask( mask4 )

  flax_P3_5 = createImage("images/plant1/plant5.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  flax_P3_5:setFillColor(0.7)
  P3Flax:insert( flax_P3_5 )
  flax_P3_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/plant1/flax5.png" )
  flax_P3_5:setMask( mask5 )

  flax_P3_6 = createImage("images/plant1/plant6.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  flax_P3_6:setFillColor(0.7)
  P3Flax:insert( flax_P3_6 )
  flax_P3_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/plant1/flax6.png" )
  flax_P3_6:setMask( mask6 )

  return createFlaxP3

end

-- Spawn Fern
function createFernP3 ()

  P3Fern = display.newGroup();
  
  fern_P3 = createImage("images/plant3/plant1.png", 400, 400, display.contentCenterX+325, display.contentCenterY+1295)
  fern_P3:setFillColor(0.6)
  P3Fern:insert( fern_P3 )
  fern_P3:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant3/fern1.png" )
  fern_P3:setMask( mask )

  fern_P3_2 = createImage("images/plant3/plant2.png", 400, 400, display.contentCenterX+325, display.contentCenterY+1295)
  fern_P3_2:setFillColor(0.7)
  P3Fern:insert( fern_P3_2 )
  fern_P3_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant3/fern2.png" )
  fern_P3_2:setMask( mask2 )

  fern_P3_3 = createImage("images/plant3/plant3.png", 400, 400, display.contentCenterX+325, display.contentCenterY+1295)
  fern_P3_3:setFillColor(0.8)
  P3Fern:insert( fern_P3_3 )
  fern_P3_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant3/fern3.png" )
  fern_P3_3:setMask( mask3 )

  fern_P3_4 = createImage("images/plant3/plant4.png", 400, 400, display.contentCenterX+325, display.contentCenterY+1295)
  fern_P3_4:setFillColor(0.6)
  P3Fern:insert( fern_P3_4 )
  fern_P3_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/plant3/fern4.png" )
  fern_P3_4:setMask( mask4 )

  return createFernP3

end

-- Create Horsetail
function createHorsetailP3 ()  

  P3Horsetail = display.newGroup();

  Horsetail_P3 = createImage("images/horsetail/horsetailstalk 1.png", 400, 700, display.contentCenterX+320, display.contentCenterY+1295)
  Horsetail_P3:setFillColor(0.6)
  P3Horsetail:insert( Horsetail_P3 )
  Horsetail_P3:scale(0.70, 0.70)
  mask = graphics.newMask( "images/horsetail/horsetailstalk 1 MASK.png" )
  Horsetail_P3:setMask( mask )

  Horsetail_P3_2 = createImage("images/horsetail/horsetailstalk 2.png", 400, 700, display.contentCenterX+320, display.contentCenterY+1295)
  Horsetail_P3_2:setFillColor(0.7)
  P3Horsetail:insert( Horsetail_P3_2 )
  Horsetail_P3_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/horsetail/horsetailstalk 2 MASK.png" )
  Horsetail_P3_2:setMask( mask2 )

  Horsetail_P3_3 = createImage("images/horsetail/horsetailstalk 3.png", 400, 700, display.contentCenterX+320, display.contentCenterY+1295)
  Horsetail_P3_3:setFillColor(0.8)
  P3Horsetail:insert( Horsetail_P3_3 )
  Horsetail_P3_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/horsetail/horsetailstalk 3 MASK.png" )
  Horsetail_P3_3:setMask( mask3 )

  Horsetail_P3_4 = createImage("images/horsetail/horsetailstalk 4.png", 400, 700, display.contentCenterX+320, display.contentCenterY+1295)
  Horsetail_P3_4:setFillColor(0.6)
  P3Horsetail:insert( Horsetail_P3_4 )
  Horsetail_P3_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/horsetail/horsetailstalk 4 MASK.png" )
  Horsetail_P3_4:setMask( mask4 )

  Horsetail_P3_5 = createImage("images/horsetail/horsetailstalk 5.png", 400, 700, display.contentCenterX+320, display.contentCenterY+1295)
  Horsetail_P3_5:setFillColor(0.7)
  P3Horsetail:insert( Horsetail_P3_5 )
  Horsetail_P3_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/horsetail/horsetailstalk 5 MASK.png" )
  Horsetail_P3_5:setMask( mask5 )

  return createHorsetailP3

end

------------------
-- Medium Plants
------------------

-- Spawn Palm
function createPalmP3 ()

  P3Palm = display.newGroup();

  palm_P3 = createImage("images/plant2/plant3.png", 400, 400, display.contentCenterX+340, display.contentCenterY+1295)
  palm_P3:setFillColor(0.7)
  P3Palm:insert( palm_P3 )
  palm_P3:scale(0.60, 0.60)
  mask = graphics.newMask( "images/plant2/palm3.png" )
  palm_P3:setMask( mask )

  palm_P3_2 = createImage("images/plant2/plant2.png", 400, 400, display.contentCenterX+340, display.contentCenterY+1295)
  palm_P3_2:setFillColor(0.6)
  P3Palm:insert( palm_P3_2 )
  palm_P3_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/plant2/palm2.png" )
  palm_P3_2:setMask( mask2 )

  palm_P3_3 = createImage("images/plant2/plant1.png", 400, 400, display.contentCenterX+340, display.contentCenterY+1295)
  palm_P3_3:setFillColor(0.5)
  P3Palm:insert( palm_P3_3 )
  palm_P3_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/plant2/palm1.png" )
  palm_P3_3:setMask( mask3 )

  return createPalmP3

end

-- Spawn Cycad
function createCycadP3 ()

  P3Cycad = display.newGroup();

  Cycad_P3 = createImage("images/cycad/cycad trunk.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  Cycad_P3:setFillColor(0.7)
  P3Cycad:insert( Cycad_P3 )
  Cycad_P3:scale(0.60, 0.60)
  mask = graphics.newMask( "images/cycad/cycad trunk Mask.png" )
  Cycad_P3:setMask( mask )

  Cycad_P3_2 = createImage("images/cycad/left leaf.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  Cycad_P3_2:setFillColor(0.6)
  P3Cycad:insert( Cycad_P3_2 )
  Cycad_P3_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/cycad/left leaf Mask.png" )
  Cycad_P3_2:setMask( mask2 )

  Cycad_P3_3 = createImage("images/cycad/right leaf.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  Cycad_P3_3:setFillColor(0.5)
  P3Cycad:insert( Cycad_P3_3 )
  Cycad_P3_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/cycad/right leaf Mask.png" )
  Cycad_P3_3:setMask( mask3 )

  Cycad_P3_4 = createImage("images/cycad/cycad mid left leaf.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  Cycad_P3_4:setFillColor(0.6)
  P3Cycad:insert( Cycad_P3_4 )
  Cycad_P3_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/cycad/cycad mid left leaf Mask.png" )
  Cycad_P3_4:setMask( mask4 )

  Cycad_P3_5 = createImage("images/cycad/cycad mid right leaf.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  Cycad_P3_5:setFillColor(0.5)
  P3Cycad:insert( Cycad_P3_5 )
  Cycad_P3_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/cycad/cycad mid right leaf Mask.png" )
  Cycad_P3_5:setMask( mask5 )

  return createCycadP3

end

-- Spawn Tree Fern
function createTreeFernP3 ()

  P3TreeFern = display.newGroup();

  TreeFern_P3 = createImage("images/tree fern/tree fern trunk.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3:setFillColor(0.7)
  P3TreeFern:insert( TreeFern_P3 )
  TreeFern_P3:scale(0.90, 0.90)
  mask = graphics.newMask( "images/tree fern/TreeFern trunk Mask.png" )
  TreeFern_P3:setMask( mask )

  TreeFern_P3_2 = createImage("images/tree fern/tree fern dead top of trunk leaves.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_2:setFillColor(0.6)
  P3TreeFern:insert( TreeFern_P3_2 )
  TreeFern_P3_2:scale(0.90, 0.90)
  mask2 = graphics.newMask( "images/tree fern/tree fern dead top of trunk leaves Mask.png" )
  TreeFern_P3_2:setMask( mask2 )

  TreeFern_P3_3 = createImage("images/tree fern/tree fern right leaf 1.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_3:setFillColor(0.5)
  P3TreeFern:insert( TreeFern_P3_3 )
  TreeFern_P3_3:scale(0.90, 0.90)
  mask3 = graphics.newMask( "images/tree fern/tree fern right leaf 1 Mask.png" )
  TreeFern_P3_3:setMask( mask3 )

  TreeFern_P3_4 = createImage("images/tree fern/tree fern right leaf 2.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_4:setFillColor(0.6)
  P3TreeFern:insert( TreeFern_P3_4 )
  TreeFern_P3_4:scale(0.90, 0.90)
  mask4 = graphics.newMask( "images/tree fern/tree fern right leaf 2 Mask.png" )
  TreeFern_P3_4:setMask( mask4 )

  TreeFern_P3_5 = createImage("images/tree fern/tree fern right leaf 3.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_5:setFillColor(0.5)
  P3TreeFern:insert( TreeFern_P3_5 )
  TreeFern_P3_5:scale(0.90, 0.90)
  mask5 = graphics.newMask( "images/tree fern/tree fern right leaf 3 Mask.png" )
  TreeFern_P3_5:setMask( mask5 )

  TreeFern_P3_6 = createImage("images/tree fern/tree fern left leaf 1.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_6:setFillColor(0.5)
  P3TreeFern:insert( TreeFern_P3_6 )
  TreeFern_P3_6:scale(0.90, 0.90)
  mask6 = graphics.newMask( "images/tree fern/tree fern left leaf 1 Mask.png" )
  TreeFern_P3_6:setMask( mask6 )

  TreeFern_P3_7 = createImage("images/tree fern/tree fern left leaf 2.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_7:setFillColor(0.6)
  P3TreeFern:insert( TreeFern_P3_7 )
  TreeFern_P3_7:scale(0.90, 0.90)
  mask7 = graphics.newMask( "images/tree fern/tree fern left leaf 2 Mask.png" )
  TreeFern_P3_7:setMask( mask7 )

  TreeFern_P3_8 = createImage("images/tree fern/tree fern left leaf 3.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_8:setFillColor(0.5)
  P3TreeFern:insert( TreeFern_P3_8 )
  TreeFern_P3_8:scale(0.90, 0.90)
  mask8 = graphics.newMask( "images/tree fern/tree fern left leaf 3 Mask.png" )
  TreeFern_P3_8:setMask( mask8 )

  TreeFern_P3_9 = createImage("images/tree fern/tree fern mid leaf.png", 400, 400, display.contentCenterX+320, display.contentCenterY+1295)
  TreeFern_P3_9:setFillColor(0.5)
  P3TreeFern:insert( TreeFern_P3_9 )
  TreeFern_P3_9:scale(0.90, 0.90)
  mask9 = graphics.newMask( "images/tree fern/tree fern mid leaf Mask.png" )
  TreeFern_P3_9:setMask( mask9 )

  return createTreeFernP3

end

-----------------
-- Large Plants
-----------------

function createPineP3 ()

  P3Pine = display.newGroup();

  pine_P3 = createImage("images/plant4/plant1.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3:setFillColor(0.6)
  P3Pine:insert( pine_P3 )
  pine_P3:scale(0.35, 0.35)
  mask = graphics.newMask( "images/plant4/pine1.png" )
  pine_P3:setMask( mask )

  pine_P3_2 = createImage("images/plant4/plant2.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3_2:setFillColor(0.7)
  P3Pine:insert( pine_P3_2 )
  pine_P3_2:scale(0.35, 0.35)
  mask2 = graphics.newMask( "images/plant4/pine2.png" )
  pine_P3_2:setMask( mask2 )

  pine_P3_3 = createImage("images/plant4/plant3.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3_3:setFillColor(0.8)
  P3Pine:insert( pine_P3_3 )
  pine_P3_3:scale(0.35, 0.35)
  mask3 = graphics.newMask( "images/plant4/pine3.png" )
  pine_P3_3:setMask( mask3 )

  pine_P3_4 = createImage("images/plant4/plant4.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3_4:setFillColor(0.6)
  P3Pine:insert( pine_P3_4 )
  pine_P3_4:scale(0.35, 0.35)
  mask4 = graphics.newMask( "images/plant4/pine4.png" )
  pine_P3_4:setMask( mask4 )

  pine_P3_5 = createImage("images/plant4/plant5.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3_5:setFillColor(0.7)
  P3Pine:insert( pine_P3_5 )
  pine_P3_5:scale(0.35, 0.35)
  mask5 = graphics.newMask( "images/plant4/pine5.png" )
  pine_P3_5:setMask( mask5 )

  pine_P3_6 = createImage("images/plant4/plant6.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3_6:setFillColor(0.7)
  P3Pine:insert( pine_P3_6 )
  pine_P3_6:scale(0.35, 0.35)
  mask6 = graphics.newMask( "images/plant4/pine6.png" )
  pine_P3_6:setMask( mask6 )

  pine_P3_7 = createImage("images/plant4/plant7.png", 600, 1150, display.contentCenterX+330, display.contentCenterY+1195)
  pine_P3_7:setFillColor(0.7)
  P3Pine:insert( pine_P3_7 )
  pine_P3_7:scale(0.35, 0.35)
  mask7 = graphics.newMask( "images/plant4/pine7.png" )
  pine_P3_7:setMask( mask7 )

  return createPineP3

end

-- Spawn Kaori
function createKaoriP3 ()

  P3Kaori = display.newGroup();

  Kaori_P3 = createImage("images/kaori/treetrunk.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3:setFillColor(0.7)
  P3Kaori:insert( Kaori_P3 )
  Kaori_P3:scale(0.60, 0.60)
  mask = graphics.newMask( "images/kaori/treetrunkMASK.png" )
  Kaori_P3:setMask( mask )

  Kaori_P3_2 = createImage("images/kaori/kaori-bottomleftleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_2:setFillColor(0.6)
  P3Kaori:insert( Kaori_P3_2 )
  Kaori_P3_2:scale(0.60, 0.60)
  mask2 = graphics.newMask( "images/kaori/kaori-bottomleftleafclusterMask.png" )
  Kaori_P3_2:setMask( mask2 )

  Kaori_P3_3 = createImage("images/kaori/kaori-bottomrightleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_3:setFillColor(0.5)
  P3Kaori:insert( Kaori_P3_3 )
  Kaori_P3_3:scale(0.60, 0.60)
  mask3 = graphics.newMask( "images/kaori/kaori-bottomrightleafclusterMASK.png" )
  Kaori_P3_3:setMask( mask3 )

  Kaori_P3_4 = createImage("images/kaori/kaori-smalltoprightleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_4:setFillColor(0.4)
  P3Kaori:insert( Kaori_P3_4 )
  Kaori_P3_4:scale(0.60, 0.60)
  mask4 = graphics.newMask( "images/kaori/kaori-smalltoprightleafclusterMASK.png" )
  Kaori_P3_4:setMask( mask4 )

  Kaori_P3_5 = createImage("images/kaori/kaori-topleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_5:setFillColor(0.7)
  P3Kaori:insert( Kaori_P3_5 )
  Kaori_P3_5:scale(0.60, 0.60)
  mask5 = graphics.newMask( "images/kaori/kaori-topleafclusterMASK.png" )
  Kaori_P3_5:setMask( mask5 )

  Kaori_P3_6 = createImage("images/kaori/kaori-topleftleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_6:setFillColor(0.6)
  P3Kaori:insert( Kaori_P3_6 )
  Kaori_P3_6:scale(0.60, 0.60)
  mask6 = graphics.newMask( "images/kaori/kaori-topleftleafclusterMask.png" )
  Kaori_P3_6:setMask( mask6 )

  Kaori_P3_7 = createImage("images/kaori/kaori-toprightleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_7:setFillColor(0.4)
  P3Kaori:insert( Kaori_P3_7 )
  Kaori_P3_7:scale(0.60, 0.60)
  mask7 = graphics.newMask( "images/kaori/kaori-toprightleafclusterMask.png" )
  Kaori_P3_7:setMask( mask7 )

  Kaori_P3_8 = createImage("images/kaori/kaori-verybottomleftleafcluster.png", 400, 400, display.contentCenterX+335, display.contentCenterY+1295)
  Kaori_P3_8:setFillColor(0.6)
  P3Kaori:insert( Kaori_P3_8 )
  Kaori_P3_8:scale(0.60, 0.60)
  mask8 = graphics.newMask( "images/kaori/kaori-verybottomleftleafclusterMASK.png" )
  Kaori_P3_8:setMask( mask8 )

  return createKaoriP3

end

-- Spawn Magnolia
function createMagnoliaP3 ()

  P3Magnolia = display.newGroup();

  Magnolia_P3 = createImage("images/magnolia/mag trunk.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3:setFillColor(0.6)
  P3Magnolia:insert( Magnolia_P3 )
  Magnolia_P3:scale(1, 1)
  mask = graphics.newMask( "images/magnolia/mag trunkMASK.png" )
  Magnolia_P3:setMask( mask )
  Magnolia_P3:scale(0.70, 0.70)

  Magnolia_P3_2 = createImage("images/magnolia/mag leafchunk1.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3_2:setFillColor(0.7)
  P3Magnolia:insert( Magnolia_P3_2 )
  Magnolia_P3_2:scale(0.70, 0.70)
  mask2 = graphics.newMask( "images/magnolia/mag leafchunk1MASK.png" )
  Magnolia_P3_2:setMask( mask2 )

  Magnolia_P3_3 = createImage("images/magnolia/mag leafchunk2.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3_3:setFillColor(0.8)
  P3Magnolia:insert( Magnolia_P3_3 )
  Magnolia_P3_3:scale(0.70, 0.70)
  mask3 = graphics.newMask( "images/magnolia/mag leafchunk2MASK.png" )
  Magnolia_P3_3:setMask( mask3 )

  Magnolia_P3_4 = createImage("images/magnolia/mag leafchunk3.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3_4:setFillColor(0.6)
  P3Magnolia:insert( Magnolia_P3_4 )
  Magnolia_P3_4:scale(0.70, 0.70)
  mask4 = graphics.newMask( "images/magnolia/mag leafchunk3MASK.png" )
  Magnolia_P3_4:setMask( mask4 )

  Magnolia_P3_5 = createImage("images/magnolia/mag leafchunk4.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3_5:setFillColor(0.7)
  P3Magnolia:insert( Magnolia_P3_5 )
  Magnolia_P3_5:scale(0.70, 0.70)
  mask5 = graphics.newMask( "images/magnolia/mag leafchunk4MASK.png" )
  Magnolia_P3_5:setMask( mask5 )

  Magnolia_P3_6 = createImage("images/magnolia/mag leafchunk5.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3_6:setFillColor(0.7)
  P3Magnolia:insert( Magnolia_P3_6 )
  Magnolia_P3_6:scale(0.70, 0.70)
  mask6 = graphics.newMask( "images/magnolia/mag leafchunk5MASK.png" )
  Magnolia_P3_6:setMask( mask6 )

  Magnolia_P3_7 = createImage("images/magnolia/mag leafchunk6.png", 400, 700, display.contentCenterX+325, display.contentCenterY+1245)
  Magnolia_P3_7:setFillColor(0.7)
  P3Magnolia:insert( Magnolia_P3_7 )
  Magnolia_P3_7:scale(0.70, 0.70)
  mask7 = graphics.newMask( "images/magnolia/mag leafchunk6MASK.png" )
  Magnolia_P3_7:setMask( mask7 )

  return createMagnoliaP3

end

-----------------------------------------
-- Creates colouring palette and buttons.
-----------------------------------------
function colouringSetupP3()

  P3Colouring = display.newGroup();

  local RockColourP3 = display.newImageRect( "images/Wood Display.png", 890, 1320)
  RockColourP3.x = display.contentCenterX+520
  RockColourP3.y = display.contentCenterY+1130
  P3Colouring:insert( RockColourP3 )

  -----------------------------------
  -- Creates palette option buttons
  -----------------------------------

  P3NormalSelect = display.newImageRect( "images/paintbuttons/NormalButton.png", 100, 100)
  P3NormalSelect.x = display.contentCenterX+520
  P3NormalSelect.y = display.contentCenterY+1090
  P3Colouring:insert( P3NormalSelect )

  P3RainbowSelect = display.newImageRect( "images/paintbuttons/Rainbow/RainbowButton.png", 100, 100)
  P3RainbowSelect.x = display.contentCenterX+660
  P3RainbowSelect.y = display.contentCenterY+1090
  P3Colouring:insert( P3RainbowSelect )

  --------------------------------------
  -- creates normal colour selection buttons.
  --------------------------------------
  P3normalPalette = display.newGroup();

  btn_new9 = display.newImageRect( "images/paintbuttons/paletteButton1.png", 130, 130)
  btn_new9.color = { 0.3, 0.5, 0.3 }
  btn_new9.x = display.contentCenterX+565
  btn_new9.y = display.contentCenterY+1270
  P3normalPalette:insert( btn_new9 )

  btn_new10 = display.newImageRect( "images/paintbuttons/paletteButton2.png", 130, 130)
  btn_new10.color = { 0.3, 0.5, 0.1 }
  btn_new10.x = display.contentCenterX+715
  btn_new10.y = display.contentCenterY+1245
  P3normalPalette:insert( btn_new10 )

  btn_new11 = display.newImageRect( "images/paintbuttons/paletteButton3.png", 130, 130)
  btn_new11.color = { 0.1, 0.4, 0.2 }
  btn_new11.x = display.contentCenterX+565
  btn_new11.y = display.contentCenterY+1380
  P3normalPalette:insert( btn_new11 )

  btn_new12 = display.newImageRect( "images/paintbuttons/paletteButton4.png", 130, 130)
  btn_new12.color = { 0.4, 0.2, 0.1 }
  btn_new12.x = display.contentCenterX+715
  btn_new12.y = display.contentCenterY+1370
  P3normalPalette:insert( btn_new12 )

  P3Colouring:insert( P3normalPalette )

  --------------------------------------
  -- creates rainbow colour selection buttons.
  --------------------------------------
  P3rainbowPalette = display.newGroup();

  btn_rainbow9 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton1.png", 130, 130)
  btn_rainbow9.color = { 1, 0, 0.}
  btn_rainbow9.x = display.contentCenterX+565
  btn_rainbow9.y = display.contentCenterY+1270
  P3rainbowPalette:insert( btn_rainbow9 )

  btn_rainbow10 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton2.png", 130, 130)
  btn_rainbow10.color = { 0, 0, 1 }
  btn_rainbow10.x = display.contentCenterX+715
  btn_rainbow10.y = display.contentCenterY+1245
  P3rainbowPalette:insert( btn_rainbow10 )

  btn_rainbow11 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton3.png", 130, 130)
  btn_rainbow11.color = { 0.5, 0, 0.5 }
  btn_rainbow11.x = display.contentCenterX+565
  btn_rainbow11.y = display.contentCenterY+1380
  P3rainbowPalette:insert( btn_rainbow11 )

  btn_rainbow12 = display.newImageRect( "images/paintbuttons/Rainbow/rainbowButton4.png", 130, 130)
  btn_rainbow12.color = { 2, 2, 0 }
  btn_rainbow12.x = display.contentCenterX+715
  btn_rainbow12.y = display.contentCenterY+1370
  P3rainbowPalette:insert( btn_rainbow12 )

  P3Colouring:insert( P3rainbowPalette )
  toggleVisibility( P3rainbowPalette )

  ---------------------------------------------------------------------------------------------
  -- creates done buttons for when you're finished colouring, set to invisible on level start.
  ---------------------------------------------------------------------------------------------
  donebtn_spawnFlaxP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFlaxP3.x = display.contentCenterX+640
  donebtn_spawnFlaxP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFlaxP3 )
  P3Colouring:insert( donebtn_spawnFlaxP3 )

  donebtn_spawnFernP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnFernP3.x = display.contentCenterX+640
  donebtn_spawnFernP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnFernP3 )
  P3Colouring:insert( donebtn_spawnFernP3 )

  donebtn_spawnHorsetailP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnHorsetailP3.x = display.contentCenterX+640
  donebtn_spawnHorsetailP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnHorsetailP3 )
  P3Colouring:insert( donebtn_spawnHorsetailP3 )

  donebtn_spawnPalmP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnPalmP3.x = display.contentCenterX+640
  donebtn_spawnPalmP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPalmP3 )
  P3Colouring:insert( donebtn_spawnPalmP3 )

  donebtn_spawnCycadP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnCycadP3.x = display.contentCenterX+640
  donebtn_spawnCycadP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnCycadP3 )
  P3Colouring:insert( donebtn_spawnCycadP3 )

  donebtn_spawnTreeFernP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnTreeFernP3.x = display.contentCenterX+640
  donebtn_spawnTreeFernP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnTreeFernP3 )
  P3Colouring:insert( donebtn_spawnTreeFernP3 )

  donebtn_spawnPineP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnPineP3.x = display.contentCenterX+640
  donebtn_spawnPineP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnPineP3 )
  P3Colouring:insert( donebtn_spawnPineP3 )

  donebtn_spawnKaoriP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnKaoriP3.x = display.contentCenterX+640
  donebtn_spawnKaoriP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnKaoriP3 )
  P3Colouring:insert( donebtn_spawnKaoriP3 )

  donebtn_spawnMagnoliaP3 = display.newImageRect( "images/Done Button Template.png", 150, 150)
  donebtn_spawnMagnoliaP3.x = display.contentCenterX+640
  donebtn_spawnMagnoliaP3.y = display.contentCenterY+1560
  toggleVisibility( donebtn_spawnMagnoliaP3 )
  P3Colouring:insert( donebtn_spawnMagnoliaP3 )

  -----------------------------------------------------------------------------------------------
  -- creates compost buttons for if you want to change plants, set to invisible on level start.
  -----------------------------------------------------------------------------------------------
  compostButtonFlaxP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFlaxP3.x = display.contentCenterX+380
  compostButtonFlaxP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFlaxP3 )
  P3Colouring:insert( compostButtonFlaxP3 )

  compostButtonFernP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonFernP3.x = display.contentCenterX+380
  compostButtonFernP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonFernP3 )
  P3Colouring:insert( compostButtonFernP3 )

  compostButtonHorsetailP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonHorsetailP3.x = display.contentCenterX+380
  compostButtonHorsetailP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonHorsetailP3 )
  P3Colouring:insert( compostButtonHorsetailP3 )

  compostButtonPalmP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPalmP3.x = display.contentCenterX+380
  compostButtonPalmP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPalmP3 )
  P3Colouring:insert( compostButtonPalmP3 )

  compostButtonCycadP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonCycadP3.x = display.contentCenterX+380
  compostButtonCycadP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonCycadP3 )
  P3Colouring:insert( compostButtonCycadP3 )

  compostButtonTreeFernP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonTreeFernP3.x = display.contentCenterX+380
  compostButtonTreeFernP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonTreeFernP3 )
  P3Colouring:insert( compostButtonTreeFernP3 )

  compostButtonPineP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonPineP3.x = display.contentCenterX+380
  compostButtonPineP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonPineP3 )
  P3Colouring:insert( compostButtonPineP3 )

  compostButtonKaoriP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonKaoriP3.x = display.contentCenterX+380
  compostButtonKaoriP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonKaoriP3 )
  P3Colouring:insert( compostButtonKaoriP3 )

  compostButtonMagnoliaP3 = display.newImageRect( "images/bush.png", 150, 130)
  compostButtonMagnoliaP3.x = display.contentCenterX+380
  compostButtonMagnoliaP3.y = display.contentCenterY+1560
  toggleVisibility( compostButtonMagnoliaP3 )
  P3Colouring:insert( compostButtonMagnoliaP3 )

end

  












