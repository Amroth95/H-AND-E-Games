
local name = require( "libraries.proto_utilities" )

function background()
 local backgroundMountains = display.newImageRect( "images/backgroundAssets/mountain.png", display.contentWidth, display.contentHeight )
 backgroundMountains.x = display.contentCenterX
 backgroundMountains.y = display.contentCenterY-400

 local backgroundMountains2 = display.newImageRect( "images/backgroundAssets/backMountain.png", display.contentWidth, display.contentHeight )
 backgroundMountains2.x = display.contentCenterX
 backgroundMountains2.y = display.contentCenterY-400

 local backgroundDirt = display.newImageRect( "images/backgroundAssets/dirtbackgroundbottom.png", display.contentWidth, display.contentHeight )
 backgroundDirt.x = display.contentCenterX
 backgroundDirt.y = display.contentCenterY

 local backgroundLakeGrass = display.newImageRect( "images/backgroundAssets/ground/lakegrass.png", display.contentWidth, display.contentHeight )
 backgroundLakeGrass.x = display.contentCenterX
 backgroundLakeGrass.y = display.contentCenterY-115

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
 Lake.x = display.contentCenterX-150
 Lake.y = display.contentCenterY-380
 Lake:scale(2.2, 2.9)
 Lake:play()

  -- Sun set up
  SunsheetData1 = { width =667, height =664, numFrames=18, sheetContentWidth=12006, sheetContentHeight=664 } 
  SunImageSheet1 = graphics.newImageSheet("images/backgroundAssets/sun sprite.png", SunsheetData1)
  sequenceSunData = {{name="Sun", sheet=SunImageSheet1, start=1, count=18, time=4000}}
  Sun = display.newSprite(SunImageSheet1, sequenceSunData)
  Sun.x = display.contentCenterX-1570
  Sun.y = display.contentCenterY-700
  Sun:scale(0.8, 0.8)
  Sun:play()

 -- Background asset layering
 backgroundLakeGrass:toBack()
 Lake:toBack()
 Sun:toBack()
 backgroundGrassOverlay:toBack()
 backgroundDirt:toBack()
 backgroundGrassBack:toBack()
 backgroundMountains2:toBack()
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

-- Rainbow set up
function rainbow ()
    RainbowsheetData1 = { width =1280, height =720, numFrames=9, sheetContentWidth=11520, sheetContentHeight=720 } 
    RainbowImageSheet1 = graphics.newImageSheet("images/backgroundAssets/rainbow sprite.png", RainbowsheetData1)
    sequenceRainbowData = {{name="Rainbow", sheet=RainbowImageSheet1, start=1, count=9, time=2000}}
    Rainbow = display.newSprite(RainbowImageSheet1, sequenceRainbowData)
    Rainbow.x = display.contentCenterX+700
    Rainbow.y = display.contentCenterY-100
    Rainbow:scale(2.5, 2.5)
    Rainbow.alpha = 0.7
    Rainbow:play()
end


-- Set up and functions for signs
function signs ()
 sign1 = createImage("images/backgroundAssets/sign post left.png", 650, 650, display.contentCenterX-1790, display.contentCenterY+20)
 sign1:rotate( 35 )
 sign2 = createImage("images/backgroundAssets/sign post right.png", 650, 650, display.contentCenterX+1770, display.contentCenterY+100)
 sign2:rotate( -35 )
end

function SignMove1 ()

    local SignMove1Seconds = 20

    local function SignMove1Time( event )
  
     -- Decrement the number of seconds
     SignMove1Seconds = SignMove1Seconds - 1
  
     -- Time is tracked in seconds; convert it to minutes and seconds
     local minutes = math.floor( SignMove1Seconds / 20 )
     local seconds = SignMove1Seconds % 20
  
     SignMove1timeup ()
  
    end
  
    SignMove1timer = timer.performWithDelay( 1000, SignMove1Time, SignMove1Seconds )

    function SignMove1timeup ()
        if SignMove1Seconds <= 0 then
         transition.to( sign1, { time=1000, x=display.contentCenterX-2390} )
         transition.to( sign2, { time=1000, x=display.contentCenterX+2370} )
         timer.cancel( SignMove1timer )
        end
    end
end



