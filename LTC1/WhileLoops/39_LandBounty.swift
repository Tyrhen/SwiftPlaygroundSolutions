func GemSwitchAction(){
    /*while unblocked collect gems and toggle switches */
    while !isBlocked{
        if isOnClosedSwitch{
            toggleSwitch()
        }
        if isOnGem{
            collectGem()
        }
        moveForward()
    }
}

GemSwitchAction()
turnRight()
moveForward()
turnRight()

GemSwitchAction()
turnLeft()
moveForward()
turnLeft()

GemSwitchAction()