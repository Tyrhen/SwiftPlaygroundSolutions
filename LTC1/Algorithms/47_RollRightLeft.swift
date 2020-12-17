func lineSolve(){
    while !isBlocked{
        if isOnGem{
            collectGem()
        }
        
        if isOnClosedSwitch{
            toggleSwitch()
        }

        moveForward()
    }
}

moveForward()
turnRight()

while !isOnOpenSwitch{
    lineSolve()
    if isBlocked && isBlockedRight{
        turnLeft()
        moveForward()
        turnLeft()
    }
    if isBlocked && isBlockedLeft{
        turnRight()
        moveForward()
        turnRight()
    }
}

