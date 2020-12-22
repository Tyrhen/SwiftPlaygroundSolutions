pinkPortal.isActive = true
bluePortal.isActive = true
var gemCollected = 0

while gemCollected != 4{ 
    moveForward()

    if isBlocked{
        turnRight()
        turnRight()
        pinkPortal.isActive = false
        bluePortal.isActive = false
    }
        
    if isOnGem{
        collectGem()
        gemCollected+=1
        bluePortal.isActive = true
        pinkPortal.isActive = true
    }

}
