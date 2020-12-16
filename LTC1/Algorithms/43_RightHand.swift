func navigateAroundWall() {
    //if blocked turn right, toggle/collect along the way
    if isBlockedRight {
        moveForward()
    }  else {
        turnRight()
        moveForward()
    }
}

while !isOnClosedSwitch {
    navigateAroundWall()
    if isOnGem{
        collectGem()
        turnRight()
        turnRight()
    }
}
toggleSwitch()