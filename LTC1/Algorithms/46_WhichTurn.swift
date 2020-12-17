func lefthand(){
    //maze logic
    if isBlockedLeft{
        moveForward()
    } else {
        turnLeft()
        moveForward()
    }
    if  isBlocked{
        turnLeft()
        toggleSwitch()
        moveForward()
    }
    if !isBlockedLeft && isOnClosedSwitch{
        turnRight()
        toggleSwitch()
        moveForward()
    }
    if isBlockedRight && !isBlockedLeft{
        moveForward()
    }
}

while !isOnGem{
    lefthand()
}
collectGem()
