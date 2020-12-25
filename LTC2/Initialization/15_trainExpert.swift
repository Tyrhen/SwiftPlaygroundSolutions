let expert = Expert()

var gemCount = 0
func doubleback(){
    //turn around 
    expert.turnRight()
    expert.turnRight()
}

func decisionmatrix(){
    //decision matrix for deciding
    //whats after each move
    if expert.isOnGem{
        expert.collectGem()
        gemCount+=1
    }
    if expert.isBlocked && gemCount == 3{
        expert.turnLockDown()
        doubleback()
    }
    if expert.isBlocked{
        doubleback()
        expert.moveForward()
    }
    if !expert.isBlockedRight{
        expert.turnRight()
        expert.moveForward()
    }
    if expert.isBlockedRight{
        expert.moveForward()
    }
}

//First Cross Sequence
expert.moveForward()
while gemCount != 3{
    decisionmatrix()
}

//Second Cross Sequence
expert.moveForward()
expert.turnRight()
expert.moveForward()
while gemCount != 6{
    decisionmatrix()
}
