
func turnaround(){
    // turn around
    turnLeft()
    turnLeft()
}
func decisiontree(){
    //decision options when moving to a new position
    moveForward()
    if !isBlockedRight{
        turnRight()
    }
    if isBlocked{
        turnaround()
    }
    if isOnGem{
        collectGem()
    }
}

for i in 1...9{
    decisiontree()
}

bluePortal.isActive = false
pinkPortal.isActive = false

for i in 1...5{
    decisiontree()
}

bluePortal.isActive = true

for i in 1...6{
    decisiontree() 
}

bluePortal.isActive = false

for i in 1...8{
    decisiontree()
}

pinkPortal.isActive = true

for i in 1...3{
    decisiontree()
}

