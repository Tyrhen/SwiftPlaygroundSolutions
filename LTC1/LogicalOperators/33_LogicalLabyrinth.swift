func RightForward2(){
    //turn right move forward twice
    turnRight()
    moveForward()
    moveForward()
}
func GemDetour() { 
    //algo to collect gem off main path
    collectGem()
    toggleSwitch()
    RightForward2()
    collectGem()
    turnRight()
    RightForward2()
    turnRight()
}

for i in 1 ... 8 {
    moveForward()
    if isOnGem && isOnClosedSwitch{
        GemDetour()
    }
    if isOnClosedSwitch && !isOnGem{
        toggleSwitch()
        turnLeft()
    }
    if isOnGem {
        collectGem()
    }
}