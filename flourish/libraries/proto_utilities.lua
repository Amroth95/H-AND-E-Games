function createRoundedRectButton (x, y, width, height, radius, text)
  -- create a group
  local btn = display.newGroup()
  -- make a rounded ractangle
  local btn_rect = display.newRoundedRect( x, y, width, height, radius )
  btn_rect.strokeWidth = 3
  btn_rect:setFillColor( 0.5 )
  btn_rect:setStrokeColor( 1, 0, 0 )
  -- add rounded rect to group
  btn:insert( btn_rect )

  -- create text on top of button
  local btn_text = display.newText( text, x, y, native.systemFont, 16 )
  btn_text:setFillColor( 1, 0, 0 )
  -- add text to group
  btn:insert( btn_text )

  return btn
end

function createImage (filepath, width, height, x, y)
  local img = display.newImageRect( filepath, width, height )
  img.x = x
  img.y = y

  return img
end

function toggleVisibility ( displayObject )
  if (displayObject.isVisible) then
    displayObject.isVisible = false
  else
    displayObject.isVisible = true
  end
end

function buttonFlipOne ( )

  if P1Select == nil then
    do return end
  else
   P1Select:rotate( 0.1 )
  end

  if P2Select == nil then
    do return end
  else
   P2Select:rotate( 0.1 )
  end

  if P3Select == nil then
    do return end
  else
   P3Select:rotate( 0.1 )
  end

  if P4Select == nil then
    do return end
  else
   P4Select:rotate( 0.1 )
  end

  local buttonFlipSeconds = 1

  local function buttonFlipTimer( event )

   -- Decrement the number of seconds
   buttonFlipSeconds = buttonFlipSeconds - 1

   -- Time is tracked in seconds; convert it to minutes and seconds
   local minutes = math.floor( buttonFlipSeconds / 1 )
   local seconds = buttonFlipSeconds % 1

   buttonFliptimeup ()

  end

  buttonFliptimer = timer.performWithDelay( 1000, buttonFlipTimer, buttonFlipSeconds )

  function buttonFliptimeup ()
    if buttonFlipSeconds <= 0
      then
        timer.cancel( buttonFliptimer )
        buttonFlipTwo()
      end
  end
end

function buttonFlipTwo ( )

  if P1Select == nil then
    do return end
  else
   P1Select:rotate( -0.1 )
  end

  if P2Select == nil then
    do return end
  else
   P2Select:rotate( -0.1 )
  end

  if P3Select == nil then
    do return end
  else
   P3Select:rotate( -0.1 )
  end

  if P4Select == nil then
    do return end
  else
   P4Select:rotate( -0.1 )
  end

  local buttonFlipSeconds = 1

  local function buttonFlipTimer( event )

   -- Decrement the number of seconds
   buttonFlipSeconds = buttonFlipSeconds - 1

   -- Time is tracked in seconds; convert it to minutes and seconds
   local minutes = math.floor( buttonFlipSeconds / 1 )
   local seconds = buttonFlipSeconds % 1

   buttonFliptimeup ()

  end

  buttonFliptimer = timer.performWithDelay( 1000, buttonFlipTimer, buttonFlipSeconds )

  function buttonFliptimeup ()
    if buttonFlipSeconds <= 0
      then
        timer.cancel( buttonFliptimer )
        buttonFlipOne()
      end
  end
end

-----------------------------------------------
-- Fireworks functions for eaten ecosystems.
-----------------------------------------------

-- Fireworks sprite set up.

SmallFirework1sheetData = { width =480, height =270, numFrames=25, sheetContentWidth=12000, sheetContentHeight=270 } 
SmallFirework1Sheet1 = graphics.newImageSheet("images/fireworks/fireworks1 small sprite sheet 1 25 frames.png", SmallFirework1sheetData)

SmallFirework2sheetData = { width =480, height =270, numFrames=25, sheetContentWidth=12000, sheetContentHeight=270 } 
SmallFirework2Sheet1 = graphics.newImageSheet("images/fireworks/fireworks1 small sprite sheet 2 25 frames.png", SmallFirework2sheetData)

LargeFirework1sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework1Sheet1 = graphics.newImageSheet("images/fireworks/fireworks2 large sprite sheet 1 23 frames.png", LargeFirework1sheetData)

LargeFirework2sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework2Sheet1 = graphics.newImageSheet("images/fireworks/fireworks2 large sprite sheet 2 23 frames.png", LargeFirework2sheetData)

LargeFirework3sheetData = { width =521.4, height =270, numFrames=23, sheetContentWidth=12000, sheetContentHeight=270 } 
LargeFirework3Sheet1 = graphics.newImageSheet("images/fireworks/fireworks2 large sprite sheet 3 23 frames.png", LargeFirework3sheetData)

FireworkData = {
{name="Small1", sheet=SmallFirework1Sheet1, frames={ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Small2", sheet=SmallFirework2Sheet1, frames={ 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=500},
{name="Large1", sheet=LargeFirework1Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750},
{name="Large2", sheet=LargeFirework2Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=500},
{name="Large3", sheet=LargeFirework3Sheet1, frames={ 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, }, time=750}
}

-- Fireworks functions for each player.

function P1fireworks ()

  P1fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P1fireworks1.x = display.contentCenterX-1440
  P1fireworks1.y = display.contentCenterY+120
  P1fireworks1:scale(3, 3)
  P1fireworks1:setSequence( "Small1" )
  P1fireworks1:play()

  local P1fireworksSeconds = 7

  local function P1fireworksTimer( event )

    -- Decrement the number of seconds
    P1fireworksSeconds = P1fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P1fireworksSeconds / 1 )
    local seconds = P1fireworksSeconds % 1
 
    P1fireworkstimecheck ()
 
  end
 
  P1fireworkstimer = timer.performWithDelay( 750, P1fireworksTimer, P1fireworksSeconds )
 
  function P1fireworkstimecheck ()
    if P1fireworksSeconds == 6 then
      P1fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P1fireworks2.x = display.contentCenterX-1440
      P1fireworks2.y = display.contentCenterY+120
      P1fireworks2:scale(3, 3)
      P1fireworks2:setSequence( "Small2" )
      P1fireworks2:play()
    end
    if P1fireworksSeconds == 5 then
      display.remove( P1fireworks1 )
      P1fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P1fireworks3.x = display.contentCenterX-1440
      P1fireworks3.y = display.contentCenterY+120
      P1fireworks3:scale(3, 3)
      P1fireworks3:setSequence( "Large1" )
      P1fireworks3:play()
    end
    if P1fireworksSeconds == 4 then
      display.remove( P1fireworks2 )
      P1fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P1fireworks4.x = display.contentCenterX-1440
      P1fireworks4.y = display.contentCenterY+120
      P1fireworks4:scale(3, 3)
      P1fireworks4:setSequence( "Large2" )
      P1fireworks4:play()
    end
    if P1fireworksSeconds == 3 then
      display.remove( P1fireworks3 )
      P1fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P1fireworks5.x = display.contentCenterX-1440
      P1fireworks5.y = display.contentCenterY+120
      P1fireworks5:scale(3, 3)
      P1fireworks5:setSequence( "Large3" )
      P1fireworks5:play()
    end
    if P1fireworksSeconds == 2 then
      display.remove( P1fireworks4 )
    end
    if P1fireworksSeconds == 1 then
      display.remove( P1fireworks5 )
    end
    if P1fireworksSeconds <= 0 then
      timer.cancel( P1fireworkstimer )
    end
  end
end

function P2fireworks ()

  P2fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P2fireworks1.x = display.contentCenterX-470
  P2fireworks1.y = display.contentCenterY+120
  P2fireworks1:scale(3, 3)
  P2fireworks1:setSequence( "Small1" )
  P2fireworks1:play()

  local P2fireworksSeconds = 7

  local function P2fireworksTimer( event )

    -- Decrement the number of seconds
    P2fireworksSeconds = P2fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P2fireworksSeconds / 1 )
    local seconds = P2fireworksSeconds % 1
 
    P2fireworkstimecheck ()
 
  end
 
  P2fireworkstimer = timer.performWithDelay( 750, P2fireworksTimer, P2fireworksSeconds )
 
  function P2fireworkstimecheck ()
    if P2fireworksSeconds == 6 then
      P2fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P2fireworks2.x = display.contentCenterX-470
      P2fireworks2.y = display.contentCenterY+120
      P2fireworks2:scale(3, 3)
      P2fireworks2:setSequence( "Small2" )
      P2fireworks2:play()
    end
    if P2fireworksSeconds == 5 then
      display.remove( P2fireworks1 )
      P2fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P2fireworks3.x = display.contentCenterX-470
      P2fireworks3.y = display.contentCenterY+120
      P2fireworks3:scale(3, 3)
      P2fireworks3:setSequence( "Large1" )
      P2fireworks3:play()
    end
    if P2fireworksSeconds == 4 then
      display.remove( P2fireworks2 )
      P2fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P2fireworks4.x = display.contentCenterX-470
      P2fireworks4.y = display.contentCenterY+120
      P2fireworks4:scale(3, 3)
      P2fireworks4:setSequence( "Large2" )
      P2fireworks4:play()
    end
    if P2fireworksSeconds == 3 then
      display.remove( P2fireworks3 )
      P2fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P2fireworks5.x = display.contentCenterX-470
      P2fireworks5.y = display.contentCenterY+120
      P2fireworks5:scale(3, 3)
      P2fireworks5:setSequence( "Large3" )
      P2fireworks5:play()
    end
    if P2fireworksSeconds == 2 then
      display.remove( P2fireworks4 )
    end
    if P2fireworksSeconds == 1 then
      display.remove( P2fireworks5 )
    end
    if P2fireworksSeconds <= 0 then
      timer.cancel( P2fireworkstimer )
    end
  end
end

function P3fireworks ()

  P3fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P3fireworks1.x = display.contentCenterX+470
  P3fireworks1.y = display.contentCenterY+120
  P3fireworks1:scale(3, 3)
  P3fireworks1:setSequence( "Small1" )
  P3fireworks1:play()

  local P3fireworksSeconds = 7

  local function P3fireworksTimer( event )

    -- Decrement the number of seconds
    P3fireworksSeconds = P3fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P3fireworksSeconds / 1 )
    local seconds = P3fireworksSeconds % 1
 
    P3fireworkstimecheck ()
 
  end
 
  P3fireworkstimer = timer.performWithDelay( 750, P3fireworksTimer, P3fireworksSeconds )
 
  function P3fireworkstimecheck ()
    if P3fireworksSeconds == 6 then
      P3fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P3fireworks2.x = display.contentCenterX+470
      P3fireworks2.y = display.contentCenterY+120
      P3fireworks2:scale(3, 3)
      P3fireworks2:setSequence( "Small2" )
      P3fireworks2:play()
    end
    if P3fireworksSeconds == 5 then
      display.remove( P3fireworks1 )
      P3fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P3fireworks3.x = display.contentCenterX+470
      P3fireworks3.y = display.contentCenterY+120
      P3fireworks3:scale(3, 3)
      P3fireworks3:setSequence( "Large1" )
      P3fireworks3:play()
    end
    if P3fireworksSeconds == 4 then
      display.remove( P3fireworks2 )
      P3fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P3fireworks4.x = display.contentCenterX+470
      P3fireworks4.y = display.contentCenterY+120
      P3fireworks4:scale(3, 3)
      P3fireworks4:setSequence( "Large2" )
      P3fireworks4:play()
    end
    if P3fireworksSeconds == 3 then
      display.remove( P3fireworks3 )
      P3fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P3fireworks5.x = display.contentCenterX+470
      P3fireworks5.y = display.contentCenterY+120
      P3fireworks5:scale(3, 3)
      P3fireworks5:setSequence( "Large3" )
      P3fireworks5:play()
    end
    if P3fireworksSeconds == 2 then
      display.remove( P3fireworks4 )
    end
    if P3fireworksSeconds == 1 then
      display.remove( P3fireworks5 )
    end
    if P3fireworksSeconds <= 0 then
      timer.cancel( P3fireworkstimer )
    end
  end
end

function P4fireworks ()

  P4fireworks1 = display.newSprite(SmallFirework1Sheet1, FireworkData)
  P4fireworks1.x = display.contentCenterX+1440
  P4fireworks1.y = display.contentCenterY+120
  P4fireworks1:scale(3, 3)
  P4fireworks1:setSequence( "Small1" )
  P4fireworks1:play()

  local P4fireworksSeconds = 7

  local function P4fireworksTimer( event )

    -- Decrement the number of seconds
    P4fireworksSeconds = P4fireworksSeconds - 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( P4fireworksSeconds / 1 )
    local seconds = P4fireworksSeconds % 1
 
    P4fireworkstimecheck ()
 
  end
 
  P4fireworkstimer = timer.performWithDelay( 750, P4fireworksTimer, P4fireworksSeconds )
 
  function P4fireworkstimecheck ()
    if P4fireworksSeconds == 6 then
      P4fireworks2 = display.newSprite(SmallFirework2Sheet1, FireworkData)
      P4fireworks2.x = display.contentCenterX+1440
      P4fireworks2.y = display.contentCenterY+120
      P4fireworks2:scale(3, 3)
      P4fireworks2:setSequence( "Small2" )
      P4fireworks2:play()
    end
    if P4fireworksSeconds == 5 then
      display.remove( P4fireworks1 )
      P4fireworks3 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P4fireworks3.x = display.contentCenterX+1440
      P4fireworks3.y = display.contentCenterY+120
      P4fireworks3:scale(3, 3)
      P4fireworks3:setSequence( "Large1" )
      P4fireworks3:play()
    end
    if P4fireworksSeconds == 4 then
      display.remove( P4fireworks2 )
      P4fireworks4 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P4fireworks4.x = display.contentCenterX+1440
      P4fireworks4.y = display.contentCenterY+120
      P4fireworks4:scale(3, 3)
      P4fireworks4:setSequence( "Large2" )
      P4fireworks4:play()
    end
    if P4fireworksSeconds == 3 then
      display.remove( P4fireworks3 )
      P4fireworks5 = display.newSprite(LargeFirework1Sheet1, FireworkData)
      P4fireworks5.x = display.contentCenterX+1440
      P4fireworks5.y = display.contentCenterY+120
      P4fireworks5:scale(3, 3)
      P4fireworks5:setSequence( "Large3" )
      P4fireworks5:play()
    end
    if P4fireworksSeconds == 2 then
      display.remove( P4fireworks4 )
    end
    if P4fireworksSeconds == 1 then
      display.remove( P4fireworks5 )
    end
    if P4fireworksSeconds <= 0 then
      timer.cancel( P4fireworkstimer )
    end
  end
end

