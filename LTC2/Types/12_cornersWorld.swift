
func traversecrossR(){
    //decision tree for the cross pattern turning right
    if isOnClosedSwitch{
        toggleSwitch()
    }
    if isOnGem{
        collectGem()
    }
    if !isBlockedRight{
        turnRight()
    }
}
func traversecrossL(){
    //decision tree for the cross pattern turning left
    if isOnClosedSwitch{
        toggleSwitch()
    }
    if isOnGem{
        collectGem()
    }
    if !isBlockedLeft{
        turnLeft()
    }
}
func complete_right_traverse(){
    //complete movement sequence for traversing a cross moving right
    moveForward()
    traversecrossR()
    if isBlocked{
        turnLeft()
        turnLeft()
    }
}
func complete_left_traverse(){
    //complete movement sequence for traversing a cross moving right
    moveForward()
    traversecrossL()
    if isBlocked{
        turnLeft()
        turnLeft()
    }
}

//First Cross
orangePortal.isActive = false
turnRight()
for i in 1...5{
    complete_right_traverse()
}

//Second Cross
orangePortal.isActive = true
moveForward()
orangePortal.isActive = false
for i in 1...8{
    complete_left_traverse()
}

//Third Cross
greenPortal.isActive = false
for i in 1...4{
    complete_right_traverse()
}

//Fourth Cross
greenPortal.isActive = true
moveForward()
turnLeft()
greenPortal.isActive = false
for i in 1...7{
    complete_left_traverse()
}