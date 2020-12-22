purplePortal.isActive = false
var gemCollected = 0

while gemCollected != 7{
    
    moveForward()
    
    if isOnGem{
        collectGem()
        gemCollected+=1
    }

    if  isBlocked{
        turnRight()
        turnRight()
        purplePortal.isActive = true
    }
    
    if isOnClosedSwitch{
        toggleSwitch()
        purplePortal.isActive = false
        
    }
}
