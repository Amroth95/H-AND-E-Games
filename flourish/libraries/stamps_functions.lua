-----------------------------------
-- Player One Stamp functions
-----------------------------------

-- Creates Stamp
function P1stamp ( event )
  if P1stampsLeft <= 0 then
    do return end
  else
    if P1StampOption1 == true then
     P1stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 50, 50)
     P1stamp1.x = event.x
     P1stamp1.y = event.y+600
     P1stamp1.Name = "P1Stamp"
     event.target.parent:insert(P1stamp1)
     P1stampsLeft = P1stampsLeft-1
     P1stampsLeftText.text = P1stampsLeft
    end
    if P1StampOption2 == true then
     P1stamp2 = display.newImageRect( "images/stamps/StampIcon.png", 50, 50)
     P1stamp2.x = event.x
     P1stamp2.y = event.y+600
     P1stamp2.Name = "P1Stamp"
     event.target.parent:insert(P1stamp2)
     P1stampsLeft = P1stampsLeft-1
     P1stampsLeftText.text = P1stampsLeft
    end
  end
end

-- Chooses Stamp
function P1chooseStamp (event)
  if (event.target.Name == "P1Stamp1") then
    P1StampOption1 = true
    P1StampOption2 = false
  end
  if (event.target.Name == "P1Stamp2") then
    P1StampOption1 = false
    P1StampOption2 = true
  end
end

-- Resets Stamp Palette
function P1stampReset()
  P1StampOption1 = false
  P1StampOption2 = false
end

-- Functions for creating and resteting the number of stamps left
function P1stampCounter()
  P1stampsLeft = 8
  
  P1stampsLeftText = display.newText( P1stampsLeft, display.contentCenterX-1230, display.contentCenterY+1330, native.systemFont, 90 )
  P1stampsLeftText:setFillColor( 1, 1, 1 )
end

function P1stampCounterReset()
  display.remove( P1stampsLeftText )
end

-----------------------------------
-- Player Two Stamp functions
-----------------------------------

-- Creates Stamp
function P2stamp ( event )
  if P2stampsLeft <= 0 then
    do return end
  else
    if P2StampOption1 == true then
     P2stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 50, 50)
     P2stamp1.x = event.x
     P2stamp1.y = event.y+600
     P2stamp1.Name = "P2Stamp"
     event.target.parent:insert(P2stamp1)
     P2stampsLeft = P2stampsLeft-1
     P2stampsLeftText.text = P2stampsLeft
    end
    if P2StampOption2 == true then
     P2stamp2 = display.newImageRect( "images/stamps/StampIcon.png", 50, 50)
     P2stamp2.x = event.x
     P2stamp2.y = event.y+600
     P2stamp2.Name = "P2Stamp"
     event.target.parent:insert(P2stamp2)
     P2stampsLeft = P2stampsLeft-1
     P2stampsLeftText.text = P2stampsLeft
    end
  end
end

-- Chooses Stamp
function P2chooseStamp (event)
  if (event.target.Name == "P2Stamp1") then
    P2StampOption1 = true
    P2StampOption2 = false
  end
  if (event.target.Name == "P2Stamp2") then
    P2StampOption1 = false
    P2StampOption2 = true
  end
end

-- Resets Stamp Palette
function P2stampReset()
  P2StampOption1 = false
  P2StampOption2 = false
end

-- Functions for creating and resteting the number of stamps left
function P2stampCounter()
  P2stampsLeft = 8
  
  P2stampsLeftText = display.newText( P2stampsLeft, display.contentCenterX-265, display.contentCenterY+1330, native.systemFont, 90 )
  P2stampsLeftText:setFillColor( 1, 1, 1 )
end

function P2stampCounterReset()
  display.remove( P2stampsLeftText )
end

-----------------------------------
-- Player Three Stamp functions
-----------------------------------

-- Creates Stamp
function P3stamp ( event )
  if P3stampsLeft <= 0 then
    do return end
  else
    if P3StampOption1 == true then
     P3stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 50, 50)
     P3stamp1.x = event.x
     P3stamp1.y = event.y+600
     P3stamp1.Name = "P3Stamp"
     event.target.parent:insert(P3stamp1)
     P3stampsLeft = P3stampsLeft-1
     P3stampsLeftText.text = P3stampsLeft
    end
    if P3StampOption2 == true then
     P3stamp2 = display.newImageRect( "images/stamps/StampIcon.png", 50, 50)
     P3stamp2.x = event.x
     P3stamp2.y = event.y+600
     P3stamp2.Name = "P3Stamp"
     event.target.parent:insert(P3stamp2)
     P3stampsLeft = P3stampsLeft-1
     P3stampsLeftText.text = P3stampsLeft
    end
  end
end

-- Chooses Stamp
function P3chooseStamp (event)
  if (event.target.Name == "P3Stamp1") then
    P3StampOption1 = true
    P3StampOption2 = false
  end
  if (event.target.Name == "P3Stamp2") then
    P3StampOption1 = false
    P3StampOption2 = true
  end
end

-- Resets Stamp Palette
function P3stampReset()
  P3StampOption1 = false
  P3StampOption2 = false
end

-- Functions for creating and resteting the number of stamps left
function P3stampCounter()
  P3stampsLeft = 8
  
  P3stampsLeftText = display.newText( P3stampsLeft, display.contentCenterX+680, display.contentCenterY+1330, native.systemFont, 90 )
  P3stampsLeftText:setFillColor( 1, 1, 1 )
end

function P3stampCounterReset()
  display.remove( P3stampsLeftText )
end

-----------------------------------
-- Player Four Stamp functions
-----------------------------------

-- Creates Stamp
function P4stamp ( event )
  if P4stampsLeft <= 0 then
    do return end
  else
    if P4StampOption1 == true then
     P4stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 50, 50)
     P4stamp1.x = event.x
     P4stamp1.y = event.y+600
     P4stamp1.Name = "P4Stamp"
     event.target.parent:insert(P4stamp1)
     P4stampsLeft = P4stampsLeft-1
     P4stampsLeftText.text = P4stampsLeft
    end
    if P4StampOption2 == true then
     P4stamp2 = display.newImageRect( "images/stamps/StampIcon.png", 50, 50)
     P4stamp2.x = event.x
     P4stamp2.y = event.y+600
     P4stamp2.Name = "P4Stamp"
     event.target.parent:insert(P4stamp2)
     P4stampsLeft = P4stampsLeft-1
     P4stampsLeftText.text = P4stampsLeft
    end
  end
end

-- Chooses Stamp
function P4chooseStamp (event)
  if (event.target.Name == "P4Stamp1") then
    P4StampOption1 = true
    P4StampOption2 = false
  end
  if (event.target.Name == "P4Stamp2") then
    P4StampOption1 = false
    P4StampOption2 = true
  end
end

-- Resets Stamp Palette
function P4stampReset()
  P4StampOption1 = false
  P4StampOption2 = false
end

-- Functions for creating and resteting the number of stamps left
function P4stampCounter()
  P4stampsLeft = 8
  
  P4stampsLeftText = display.newText( P4stampsLeft, display.contentCenterX+1630, display.contentCenterY+1330, native.systemFont, 90 )
  P4stampsLeftText:setFillColor( 1, 1, 1 )
end

function P4stampCounterReset()
  display.remove( P4stampsLeftText )
end

