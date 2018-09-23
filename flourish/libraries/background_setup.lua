
--local name = require( "libraries.proto_utilities" )

function background()
 local backgroundMountains = display.newImageRect( "images/backgroundAssets/mountain.png", display.contentWidth, display.contentHeight )
 backgroundMountains.x = display.contentCenterX
 backgroundMountains.y = display.contentCenterY-400

 local backgroundDirt = display.newImageRect( "images/backgroundAssets/dirtbackgroundbottom.png", display.contentWidth, display.contentHeight )
 backgroundDirt.x = display.contentCenterX
 backgroundDirt.y = display.contentCenterY

 local backgroundLakeGrass = display.newImageRect( "images/backgroundAssets/ground/lakegrass.png", display.contentWidth, display.contentHeight )
 backgroundLakeGrass.x = display.contentCenterX
 backgroundLakeGrass.y = display.contentCenterY

 local backgroundGrassBack = display.newImageRect( "images/backgroundAssets/ground/grassbackground.png", display.contentWidth, display.contentHeight )
 backgroundGrassBack.x = display.contentCenterX
 backgroundGrassBack.y = display.contentCenterY

 local backgroundGrassOverlay = display.newImageRect( "images/backgroundAssets/ground/grassdirtoverlay.png", display.contentWidth, display.contentHeight )
 backgroundGrassOverlay.x = display.contentCenterX
 backgroundGrassOverlay.y = display.contentCenterY

 local backgroundSky = display.newImageRect( "images/backgroundAssets/sky.png", display.contentWidth, display.contentHeight )
 backgroundSky.x = display.contentCenterX
 backgroundSky.y = display.contentCenterY

 -- Lake set up
 LakesheetData1 = { width =1920, height =1080, numFrames=5, sheetContentWidth=9600, sheetContentHeight=1080 } 
 LakeImageSheet1 = graphics.newImageSheet("images/backgroundAssets/ground/lakesprite.png", LakesheetData1)
 sequenceLakeData = {{name="Lake", sheet=LakeImageSheet1, start=1, count=5, time=1000}}
 Lake = display.newSprite(LakeImageSheet1, sequenceLakeData)
 Lake.x = display.contentCenterX
 Lake.y = display.contentCenterY
 Lake:scale(2, 2)
 Lake:play()

 -- Background asset layering
 backgroundLakeGrass:toBack()
 Lake:toBack()
 backgroundGrassOverlay:toBack()
 backgroundDirt:toBack()
 backgroundGrassBack:toBack()
 backgroundMountains:toBack()
 backgroundSky:toBack()
 
 return background
end

-- Separate function for grass overlaying Dino's feet
function grass ()

    backgroundGrassFront = display.newImageRect( "images/backgroundAssets/ground/grassforeground.png", display.contentWidth, display.contentHeight )
    backgroundGrassFront.x = display.contentCenterX
    backgroundGrassFront.y = display.contentCenterY

end

function mountainOverlayer ()
 mountainOverlay = display.newImageRect( "images/backgroundAssets/mountainCloudOverlay.png", display.contentWidth, display.contentHeight )
 mountainOverlay.x = display.contentCenterX
 mountainOverlay.y = display.contentCenterY-400
end
 

