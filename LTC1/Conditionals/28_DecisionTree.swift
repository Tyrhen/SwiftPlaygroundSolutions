func backtrack(){
    //OnGem function helper
    //get back to starting position
    turnLeft()
    turnLeft()
    moveForward()
    turnRight()
    for i in 1...3{
        moveForward()
    }
    turnRight()
}

func OnGem(){
    //algo for collection pattern on gem event
    turnRight()
    for i in 1...3{
        moveForward()
    }
    turnLeft()
    moveForward()
    collectGem()
    backtrack()
}

func OnSwitch(){
    //algo for collection pattern on switch event
    turnLeft()
    moveForward()
    collectGem()
    turnLeft()
    turnLeft()
    moveForward()
    turnLeft()
}

for i in 1...5{
    moveForward()
    if isOnGem{
        collectGem()
        OnGem()
    }else if isOnClosedSwitch{
        toggleSwitch()
        OnSwitch()
    }
}