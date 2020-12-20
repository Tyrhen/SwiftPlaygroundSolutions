var switchCount = 0
var gemCount = 0

func rightalg() {
    //right-hand algorithm 
    if isBlockedRight{
        moveForward()
    }

    if !isBlockedRight{
        turnRight()
        moveForward()
    }
    
    if isBlocked{
        turnLeft()
    }
}

while switchCount < 4{
    rightalg()

    if gemCount < 3{
        if isOnGem{
            collectGem()
            gemCount+=1
        }
    }

    if isOnClosedSwitch{
        toggleSwitch()
        switchCount+=1
    }
}