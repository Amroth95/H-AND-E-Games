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
