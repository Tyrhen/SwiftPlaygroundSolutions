let totalGems = randomNumberOfGems
var gemsCollected = 0

while gemsCollected != totalGems{

    moveForward()
    
    if isOnGem{
        collectGem()
        gemsCollected+=1
    }

    if isBlocked && isBlockedLeft{
        if isBlockedRight{
            turnRight()
            turnRight()
            continue
        }
        turnRight()
    }

    if isBlocked && isBlockedRight{
        turnLeft()
    }
}