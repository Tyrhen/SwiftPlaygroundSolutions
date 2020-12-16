func navigateAroundWall() {
    //if blocked turn right, toggle/collect along the way
    if isBlockedRight {
        moveForward()
    }  else {
        turnRight()
        moveForward()
    }
    if isBlockedRight && isBlocked{
        turnLeft()
    }
}
    
while !isOnClosedSwitch {
    navigateAroundWall()
    if isOnGem {
        collectGem()
        turnLeft()
        turnLeft()
    }
}
toggleSwitch()