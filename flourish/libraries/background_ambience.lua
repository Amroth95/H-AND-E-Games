


function birds ()
    BirdsheetData1 = { width =282.476190476, height =1399, numFrames=21, sheetContentWidth=5932, sheetContentHeight=1399 } 
    BirdImageSheet1 = graphics.newImageSheet("images/ambienceAssets/Bird fix.png", BirdsheetData1)

    sequenceBirdData = {{name="normalFly", sheet=BirdImageSheet1, start=1, count=21, time=750}}

    Bird = display.newSprite(BirdImageSheet1, sequenceBirdData)
    Bird.x = 7500 ; Bird.y = 820
    Bird:scale(0.8, 0.7)
    Bird:play()

    Bird2 = display.newSprite(BirdImageSheet1, sequenceBirdData)
    Bird2.x = 7600 ; Bird2.y = 620
    Bird2:scale(0.6, 0.5)
    Bird2:play()

    transition.to( Bird, { time=2000, x=-300 } )
    transition.to( Bird2, { time=2000, x=-200 } )
        
    birdsecondsTillcomplete = 20

    function birdTimer( event )

        -- Decrement the number of seconds
        birdsecondsTillcomplete = birdsecondsTillcomplete - 1

        -- Time is tracked in seconds; convert it to minutes and seconds
        local minutes = math.floor( birdsecondsTillcomplete / 20 )
        local seconds = birdsecondsTillcomplete % 20

        birdTimeup ()

    end

    flyingBirdTimer = timer.performWithDelay( 1000, birdTimer, birdsecondsTillcomplete )

    function birdTimeup ()
        if birdsecondsTillcomplete <= 0 then
         display.remove( Bird )
         Bird = nil
         display.remove( Bird2 )
         Bird2 = nil
         birds ()   
        end
    end

 
end

