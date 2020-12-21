var gemCount = 0
var switchCount = 0 

func righthand(){
    //traverse the loop pattern clockwise
    if isBlockedLeft{
        moveForward()
    }
    if isBlockedLeft && isBlocked{
        turnRight()
    }
}

while !isOnClosedSwitch{
    if isOnGem{
        collectGem()
        gemCount+=1
    }
    righthand()
   
}

while switchCount != gemCount{
    
    if isOnClosedSwitch{
        toggleSwitch()
        switchCount+=1
    }
    righthand()
}