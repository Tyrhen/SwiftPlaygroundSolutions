while !isOnGem && !isBlocked{
    moveForward()
    if isOnClosedSwitch{
        toggleSwitch()
    }
}