let switchCounter = numberOfSwitches
var gemCount = 0

func righthand(){
    //right-hand maze traverse
    if isBlockedRight{
        moveForward()
    }
    else{
        turnRight()
        moveForward()
    }
}

moveForward()
while gemCount != switchCounter{
    righthand()
    if isOnGem{
        collectGem()
        gemCount+=1
    }
}