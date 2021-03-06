

function birds ()
    BirdsheetData1 = { width =348.4, height =1399, numFrames=17, sheetContentWidth=5932, sheetContentHeight=1399 } 
    BirdImageSheet1 = graphics.newImageSheet("images/ambienceAssets/Bird fix.png", BirdsheetData1)

    sequenceBirdData = {
    {name="normalFly1", sheet=BirdImageSheet1, start=1, count=17, time=750},
    {name="normalFly2", sheet=BirdImageSheet1, start=1, count=17, time=500}
    }

    Bird = display.newSprite(BirdImageSheet1, sequenceBirdData)
    Bird.x = 7500 ; Bird.y = 620
    Bird:scale(1.3, 1)
    Bird:play()

    Bird2 = display.newSprite(BirdImageSheet1, sequenceBirdData)
    Bird2:setSequence( "normalFly2" )
    Bird2.x = 7600 ; Bird2.y = 420
    Bird2:scale(1.1, 0.8)
    Bird2:play()

    transition.to( Bird, { time=5000, x=-300 } )
    transition.to( Bird2, { time=5000, x=-200 } )
end

-- Cloud Functions

function cloudSpawn1 ()

    cloud1 = display.newImageRect( "images/ambienceAssets/clouds/clouds.png", 1600, 1200 )
    cloud1.x = -900 ; cloud1.y = 720
    cloud1.alpha = 0.8

    transition.to( cloud1, { time=170000, x=7500 } )
end

function cloudSpawn2 ()

    cloud2 = display.newImageRect( "images/ambienceAssets/clouds/cloud2.png", 1600, 1200 )
    cloud2.x = -900 ; cloud2.y = 720
    cloud2.alpha = 0.8

    transition.to( cloud2, { time=170000, x=7500 } )
end

function cloudSpawn3 ()

    cloud3 = display.newImageRect( "images/ambienceAssets/clouds/cloud3.png", 1600, 1200 )
    cloud3.x = -900 ; cloud3.y = 720
    cloud3.alpha = 0.8

    transition.to( cloud3, { time=170000, x=7500 } )
end


--------------------------------------
-- Set up for butterfly ambience
--------------------------------------

function butterfly1 ()
    ButterflysheetData = { width =1920, height =1080, numFrames=4, sheetContentWidth=7680, sheetContentHeight=1080 } 
    ButterflySheet1 = graphics.newImageSheet("images/ambienceAssets/butterfly sprites/redbutterfly.png", ButterflysheetData)

    ButterflyData = {{name="Flying1", sheet=ButterflySheet1, start=1, count=4, time=350}}

    Butterfly = display.newSprite(ButterflySheet1, ButterflyData)
    Butterfly.x = -100 ; Butterfly.y = 920
    Butterfly:scale(0.2, 0.2)
    Butterfly:play()

    physics.addBody(Butterfly, "Dynamic", {density=0, friction=0, radius=800})
    Butterfly.myName = "Butterflies!"
    physics.setGravity(0,0)
    physics.start( Butterfly )
    Butterfly.collision = DinoCollision
    Butterfly:addEventListener( "collision", Butterfly )

    transition.to( Butterfly, { time=17000, x=7500 } )

    return butterfly1
end

function butterfly2 ()
    ButterflysheetData = { width =1920, height =1080, numFrames=4, sheetContentWidth=7680, sheetContentHeight=1080 } 
    ButterflySheet1 = graphics.newImageSheet("images/ambienceAssets/butterfly sprites/bluebutterfly.png", ButterflysheetData)

    ButterflyData = {{name="Flying1", sheet=ButterflySheet1, start=1, count=4, time=350}}

    Butterfly = display.newSprite(ButterflySheet1, ButterflyData)
    Butterfly.x = 4600 ; Butterfly.y = 920
    Butterfly.xScale = -1
    Butterfly:scale(0.2, 0.2)
    Butterfly:play()

    physics.addBody(Butterfly, "Dynamic", {density=0, friction=0, radius=800})
    Butterfly.myName = "Butterflies!"
    physics.setGravity(0,0)
    physics.start( Butterfly )
    Butterfly.collision = DinoCollision
    Butterfly:addEventListener( "collision", Butterfly )

    transition.to( Butterfly, { time=17000, x=-700 } )

    return butterfly2
end

function butterfly3 ()
    ButterflysheetData = { width =1920, height =1080, numFrames=4, sheetContentWidth=7680, sheetContentHeight=1080 } 
    ButterflySheet1 = graphics.newImageSheet("images/ambienceAssets/butterfly sprites/greenbutterfly.png", ButterflysheetData)

    ButterflyData = {{name="Flying1", sheet=ButterflySheet1, start=1, count=4, time=350}}

    Butterfly = display.newSprite(ButterflySheet1, ButterflyData)
    Butterfly.x = -100 ; Butterfly.y = 920
    Butterfly:scale(0.2, 0.2)
    Butterfly:play()

    physics.addBody(Butterfly, "Dynamic", {density=0, friction=0, radius=800})
    Butterfly.myName = "Butterflies!"
    physics.setGravity(0,0)
    physics.start( Butterfly )
    Butterfly.collision = DinoCollision
    Butterfly:addEventListener( "collision", Butterfly )

    transition.to( Butterfly, { time=17000, x=7500 } )

    return butterfly3
end

function butterfly4 ()
    ButterflysheetData = { width =1920, height =1080, numFrames=4, sheetContentWidth=7680, sheetContentHeight=1080 } 
    ButterflySheet1 = graphics.newImageSheet("images/ambienceAssets/butterfly sprites/yellowbutterfly.png", ButterflysheetData)

    ButterflyData = {{name="Flying1", sheet=ButterflySheet1, start=1, count=4, time=350}}

    Butterfly = display.newSprite(ButterflySheet1, ButterflyData)
    Butterfly.x = 4600 ; Butterfly.y = 920
    Butterfly.xScale = -1
    Butterfly:scale(0.2, 0.2)
    Butterfly:play()

    physics.addBody(Butterfly, "Dynamic", {density=0, friction=0, radius=800})
    Butterfly.myName = "Butterflies!"
    physics.setGravity(0,0)
    physics.start( Butterfly )
    Butterfly.collision = DinoCollision
    Butterfly:addEventListener( "collision", Butterfly )

    transition.to( Butterfly, { time=17000, x=-700 } )

    return butterfly4
end


