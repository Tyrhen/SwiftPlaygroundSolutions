for i in 1 ... 13 {
    if !isBlocked{
        moveForward()
        if isOnClosedSwitch{
            toggleSwitch()
        }else if isBlocked{
            turnLeft()
        }
    }
}