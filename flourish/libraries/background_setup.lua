
--local name = require( "libraries.proto_utilities" )

function background()
 local backgroundMountains = display.newImageRect( "images/backgroundAssets/mountain.png", display.contentWidth, display.contentHeight )
 backgroundMountains.x = display.contentCenterX
 backgroundMountains.y = display.contentCenterY-400

 local backgroundDirt = display.newImageRect( "images/backgroundAssets/dirtbackgroundbottom.png", display.contentWidth, display.contentHeight )
 backgroundDirt.x = display.contentCenterX
 backgroundDirt.y = display.contentCenterY

 local backgroundPlants = display.newImageRect( "images/backgroundAssets/plantsbackgroundbottom.png", display.contentWidth, display.contentHeight )
 backgroundPlants.x = display.contentCenterX
 backgroundPlants.y = display.contentCenterY

 local backgroundRocks = display.newImageRect( "images/backgroundAssets/backgroundRocks.png", display.contentWidth, display.contentHeight )
 backgroundRocks.x = display.contentCenterX
 backgroundRocks.y = display.contentCenterY+100

 local backgroundImg = display.newImageRect( "images/background.png", display.contentWidth, display.contentHeight )
 backgroundImg.x = display.contentCenterX
 backgroundImg.y = display.contentCenterY

 local backgroundSky = display.newImageRect( "images/backgroundAssets/sky.png", display.contentWidth, display.contentHeight )
 backgroundSky.x = display.contentCenterX
 backgroundSky.y = display.contentCenterY

 local backgroundClouds = display.newImageRect( "images/backgroundAssets/clouds.png", display.contentWidth, display.contentHeight )
 backgroundClouds.x = display.contentCenterX
 backgroundClouds.y = display.contentCenterY-30
 backgroundClouds.alpha = 0.8

 backgroundPlants:toBack()
 backgroundDirt:toBack()
 backgroundClouds:toBack()
 backgroundMountains:toBack()
 backgroundSky:toBack()
 backgroundImg:toBack()
 
 return background
end

