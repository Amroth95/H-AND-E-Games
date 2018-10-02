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
