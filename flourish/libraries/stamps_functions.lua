-----------------------------------
-- Player One Stamp functions
-----------------------------------

-- Creates Stamp
function P1stamp ( event )
  if P1StampOption1 == true then
    if P1stamp1Left == 0 then
      do return end
    else
     P1stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 90, 90)
     P1stamp1.x = event.x
     P1stamp1.y = event.y+600
     P1stamp1.Name = "P1Stamp"
     event.target.parent:insert(P1stamp1)
     P1stamp1Left = P1stamp1Left-1
    end
  end
  if P1StampOption2 == true then
    if P1stamp2Left == 0 then
      do return end
    else
     P1stamp2 = display.newImageRect( "images/stamps/Stamp2.png", 90, 90)
     P1stamp2.x = event.x
     P1stamp2.y = event.y+600
     P1stamp2.Name = "P1Stamp"
     event.target.parent:insert(P1stamp2)
     P1stamp2Left = P1stamp2Left-1
    end
  end
  if P1StampOption3 == true then
    if P1stamp3Left == 0 then
      do return end
    else
      P1stamp3 = display.newImageRect( "images/stamps/Stamp3.png", 90, 90)
      P1stamp3.x = event.x
      P1stamp3.y = event.y+600
      P1stamp3.Name = "P1Stamp"
      event.target.parent:insert(P1stamp3)
      P1stamp3Left = P1stamp3Left-1
    end
  end
  -- Special Stamp
  if P1StampOption4 == true then
    if P1stamp4Left == 0 then
      do return end
    else
      if btn_stamp4.frame == 9 then
       P1stamp4 = display.newImageRect( "images/stamps/special stamps/flax.png", 90, 90)
       P1stamp4.x = event.x
       P1stamp4.y = event.y+600
       P1stamp4.Name = "P1Stamp"
       event.target.parent:insert(P1stamp4)
       P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 8 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/fern1.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 7 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/horse tail.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 6 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/palm.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 5 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/cycad.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 4 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/fern2.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 3 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/white pine.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 2 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/kaori.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
      if btn_stamp4.frame == 1 then
        P1stamp4 = display.newImageRect( "images/stamps/special stamps/mag.png", 90, 90)
        P1stamp4.x = event.x
        P1stamp4.y = event.y+600
        P1stamp4.Name = "P1Stamp"
        event.target.parent:insert(P1stamp4)
        P1stamp4Left = P1stamp4Left-1
      end
    end
  end
end

-- Chooses Stamp
function P1chooseStamp (event)
  if (event.target.Name == "P1Stamp1") then
    P1StampOption1 = true
    P1StampOption2 = false
    P1StampOption3 = false
    P1StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P1Stamp2") then
    P1StampOption1 = false
    P1StampOption2 = true
    P1StampOption3 = false
    P1StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P1Stamp3") then
    P1StampOption1 = false
    P1StampOption2 = false
    P1StampOption3 = true
    P1StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P1Stamp4") then
    P1StampOption1 = false
    P1StampOption2 = false
    P1StampOption3 = false
    P1StampOption4 = true
    toggleVisibility( event.target )
  end
end

-- Functions for creating and resteting the number of stamps left
function P1stampCounter()
  P1stamp1Left = 1
  P1stamp2Left = 1
  P1stamp3Left = 1
  P1stamp4Left = 1
end

-- Resets Stamp Palette
function P1stampReset()
  P1StampOption1 = false
  P1StampOption2 = false
  P1StampOption3 = false
  P1StampOption4 = false

  btn_stamp1.isVisible = true
  btn_stamp2.isVisible = true
  btn_stamp3.isVisible = true
  btn_stamp4.isVisible = true
end

-----------------------------------
-- Player Two Stamp functions
-----------------------------------

-- Creates Stamp
function P2stamp ( event )
  if P2StampOption1 == true then
    if P2stamp1Left == 0 then
      do return end
    else
     P2stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 90, 90)
     P2stamp1.x = event.x
     P2stamp1.y = event.y+600
     P2stamp1.Name = "P2Stamp"
     event.target.parent:insert(P2stamp1)
     P2stamp1Left = P2stamp1Left-1
    end
  end
  if P2StampOption2 == true then
    if P2stamp2Left == 0 then
      do return end
    else
     P2stamp2 = display.newImageRect( "images/stamps/Stamp2.png", 90, 90)
     P2stamp2.x = event.x
     P2stamp2.y = event.y+600
     P2stamp2.Name = "P2Stamp"
     event.target.parent:insert(P2stamp2)
     P2stamp2Left = P2stamp2Left-1
    end
  end
  if P2StampOption3 == true then
    if P2stamp3Left == 0 then
      do return end
    else
      P2stamp3 = display.newImageRect( "images/stamps/Stamp3.png", 90, 90)
      P2stamp3.x = event.x
      P2stamp3.y = event.y+600
      P2stamp3.Name = "P2Stamp"
      event.target.parent:insert(P2stamp3)
      P2stamp3Left = P2stamp3Left-1
    end
  end
  -- Special Stamp
  if P2StampOption4 == true then
    if P2stamp4Left == 0 then
      do return end
    else
      if btn_stamp8.frame == 9 then
       P2stamp4 = display.newImageRect( "images/stamps/special stamps/flax.png", 90, 90)
       P2stamp4.x = event.x
       P2stamp4.y = event.y+600
       P2stamp4.Name = "P2Stamp"
       event.target.parent:insert(P2stamp4)
       P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 8 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/fern1.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 7 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/horse tail.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 6 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/palm.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 5 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/cycad.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 4 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/fern2.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 3 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/white pine.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 2 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/kaori.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
      if btn_stamp8.frame == 1 then
        P2stamp4 = display.newImageRect( "images/stamps/special stamps/mag.png", 90, 90)
        P2stamp4.x = event.x
        P2stamp4.y = event.y+600
        P2stamp4.Name = "P2Stamp"
        event.target.parent:insert(P2stamp4)
        P2stamp4Left = P2stamp4Left-1
      end
    end
  end
end

-- Chooses Stamp
function P2chooseStamp (event)
  if (event.target.Name == "P2Stamp1") then
    P2StampOption1 = true
    P2StampOption2 = false
    P2StampOption3 = false
    P2StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P2Stamp2") then
    P2StampOption1 = false
    P2StampOption2 = true
    P2StampOption3 = false
    P2StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P2Stamp3") then
    P2StampOption1 = false
    P2StampOption2 = false
    P2StampOption3 = true
    P2StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P2Stamp4") then
    P2StampOption1 = false
    P2StampOption2 = false
    P2StampOption3 = false
    P2StampOption4 = true
    toggleVisibility( event.target )
  end
end

-- Functions for creating and resteting the number of stamps left
function P2stampCounter()
  P2stamp1Left = 1
  P2stamp2Left = 1
  P2stamp3Left = 1
  P2stamp4Left = 1
end

-- Resets Stamp Palette
function P2stampReset()
  P2StampOption1 = false
  P2StampOption2 = false
  P2StampOption3 = false
  P2StampOption4 = false
  
  btn_stamp5.isVisible = true
  btn_stamp6.isVisible = true
  btn_stamp7.isVisible = true
  btn_stamp8.isVisible = true
end

-----------------------------------
-- Player Three Stamp functions
-----------------------------------

-- Creates Stamp
function P3stamp ( event )
  if P3StampOption1 == true then
    if P3stamp1Left == 0 then
      do return end
    else
     P3stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 90, 90)
     P3stamp1.x = event.x
     P3stamp1.y = event.y+600
     P3stamp1.Name = "P3Stamp"
     event.target.parent:insert(P3stamp1)
     P3stamp1Left = P3stamp1Left-1
    end
  end
  if P3StampOption2 == true then
    if P3stamp2Left == 0 then
      do return end
    else
     P3stamp2 = display.newImageRect( "images/stamps/Stamp2.png", 90, 90)
     P3stamp2.x = event.x
     P3stamp2.y = event.y+600
     P3stamp2.Name = "P3Stamp"
     event.target.parent:insert(P3stamp2)
     P3stamp2Left = P3stamp2Left-1
    end
  end
  if P3StampOption3 == true then
    if P3stamp3Left == 0 then
      do return end
    else
      P3stamp3 = display.newImageRect( "images/stamps/Stamp3.png", 90, 90)
      P3stamp3.x = event.x
      P3stamp3.y = event.y+600
      P3stamp3.Name = "P3Stamp"
      event.target.parent:insert(P3stamp3)
      P3stamp3Left = P3stamp3Left-1
    end
  end
  -- Special Stamp
  if P3StampOption4 == true then
    if P3stamp4Left == 0 then
      do return end
    else
      if btn_stamp12.frame == 9 then
       P3stamp4 = display.newImageRect( "images/stamps/special stamps/flax.png", 90, 90)
       P3stamp4.x = event.x
       P3stamp4.y = event.y+600
       P3stamp4.Name = "P3Stamp"
       event.target.parent:insert(P3stamp4)
       P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 8 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/fern1.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 7 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/horse tail.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 6 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/palm.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 5 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/cycad.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 4 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/fern2.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 3 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/white pine.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 2 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/kaori.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
      if btn_stamp12.frame == 1 then
        P3stamp4 = display.newImageRect( "images/stamps/special stamps/mag.png", 90, 90)
        P3stamp4.x = event.x
        P3stamp4.y = event.y+600
        P3stamp4.Name = "P3Stamp"
        event.target.parent:insert(P3stamp4)
        P3stamp4Left = P3stamp4Left-1
      end
    end
  end
end

-- Chooses Stamp
function P3chooseStamp (event)
  if (event.target.Name == "P3Stamp1") then
    P3StampOption1 = true
    P3StampOption2 = false
    P3StampOption3 = false
    P3StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P3Stamp2") then
    P3StampOption1 = false
    P3StampOption2 = true
    P3StampOption3 = false
    P3StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P3Stamp3") then
    P3StampOption1 = false
    P3StampOption2 = false
    P3StampOption3 = true
    P3StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P3Stamp4") then
    P3StampOption1 = false
    P3StampOption2 = false
    P3StampOption3 = false
    P3StampOption4 = true
    toggleVisibility( event.target )
  end
end

-- Functions for creating and resteting the number of stamps left
function P3stampCounter()
  P3stamp1Left = 1
  P3stamp2Left = 1
  P3stamp3Left = 1
  P3stamp4Left = 1 
end

-- Resets Stamp Palette
function P3stampReset()
  P3StampOption1 = false
  P3StampOption2 = false
  P3StampOption3 = false
  P3StampOption4 = false

  btn_stamp9.isVisible = true
  btn_stamp10.isVisible = true
  btn_stamp11.isVisible = true
  btn_stamp12.isVisible = true
end

-----------------------------------
-- Player Four Stamp functions
-----------------------------------

-- Creates Stamp
function P4stamp ( event )
  if P4StampOption1 == true then
    if P4stamp1Left == 0 then
      do return end
    else
     P4stamp1 = display.newImageRect( "images/stamps/Stamp1.png", 90, 90)
     P4stamp1.x = event.x
     P4stamp1.y = event.y+600
     P4stamp1.Name = "P4Stamp"
     event.target.parent:insert(P4stamp1)
     P4stamp1Left = P4stamp1Left-1
    end
  end
  if P4StampOption2 == true then
    if P4stamp2Left == 0 then
      do return end
    else
     P4stamp2 = display.newImageRect( "images/stamps/Stamp2.png", 90, 90)
     P4stamp2.x = event.x
     P4stamp2.y = event.y+600
     P4stamp2.Name = "P4Stamp"
     event.target.parent:insert(P4stamp2)
     P4stamp2Left = P4stamp2Left-1
    end
  end
  if P4StampOption3 == true then
    if P4stamp3Left == 0 then
      do return end
    else
      P4stamp3 = display.newImageRect( "images/stamps/Stamp3.png", 90, 90)
      P4stamp3.x = event.x
      P4stamp3.y = event.y+600
      P4stamp3.Name = "P4Stamp"
      event.target.parent:insert(P4stamp3)
      P4stamp3Left = P4stamp3Left-1
    end
  end
  -- Special Stamp
  if P4StampOption4 == true then
    if P4stamp4Left == 0 then
      do return end
    else
      if btn_stamp16.frame == 9 then
       P4stamp4 = display.newImageRect( "images/stamps/special stamps/flax.png", 90, 90)
       P4stamp4.x = event.x
       P4stamp4.y = event.y+600
       P4stamp4.Name = "P4Stamp"
       event.target.parent:insert(P4stamp4)
       P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 8 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/fern1.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 7 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/horse tail.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 6 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/palm.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 5 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/cycad.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 4 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/fern2.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 3 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/white pine.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 2 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/kaori.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
      if btn_stamp16.frame == 1 then
        P4stamp4 = display.newImageRect( "images/stamps/special stamps/mag.png", 90, 90)
        P4stamp4.x = event.x
        P4stamp4.y = event.y+600
        P4stamp4.Name = "P4Stamp"
        event.target.parent:insert(P4stamp4)
        P4stamp4Left = P4stamp4Left-1
      end
    end
  end
end

-- Chooses Stamp
function P4chooseStamp (event)
  if (event.target.Name == "P4Stamp1") then
    P4StampOption1 = true
    P4StampOption2 = false
    P4StampOption3 = false
    P4StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P4Stamp2") then
    P4StampOption1 = false
    P4StampOption2 = true
    P4StampOption3 = false
    P4StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P4Stamp3") then
    P4StampOption1 = false
    P4StampOption2 = false
    P4StampOption3 = true
    P4StampOption4 = false
    toggleVisibility( event.target )
  end
  if (event.target.Name == "P4Stamp4") then
    P4StampOption1 = false
    P4StampOption2 = false
    P4StampOption3 = false
    P4StampOption4 = true
    toggleVisibility( event.target )
  end
end

-- Functions for creating and resteting the number of stamps left
function P4stampCounter()
  P4stamp1Left = 1
  P4stamp2Left = 1
  P4stamp3Left = 1
  P4stamp4Left = 1
end

-- Resets Stamp Palette
function P4stampReset()
  P4StampOption1 = false
  P4StampOption2 = false
  P4StampOption3 = false
  P4StampOption4 = false

  btn_stamp13.isVisible = true
  btn_stamp14.isVisible = true
  btn_stamp15.isVisible = true
  btn_stamp16.isVisible = true
end

