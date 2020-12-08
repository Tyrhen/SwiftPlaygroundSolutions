func TurnRightMoveForward(){
    turnRight()
    moveForward()
}

for i in 1 ... 7 {
    if !isBlocked{
        if isOnGem{
            collectGem()
        }
        moveForward()
    }

    if isBlockedLeft && isOnGem{
        collectGem()
        TurnRightMoveForward()
        moveForward()
        toggleSwitch()
        turnRight()
        TurnRightMoveForward()
        moveForward()
        TurnRightMoveForward()
        
        
    }

    if isBlocked && isBlockedLeft && !isOnGem{
        break
    }

    if isBlockedLeft && !isOnGem{
        TurnRightMoveForward()
        
        if isOnClosedSwitch{
            toggleSwitch()
        }
        turnRight()
        TurnRightMoveForward()
        turnRight()
        
    }
}