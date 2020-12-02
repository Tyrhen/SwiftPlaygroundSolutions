func turnAround(){
    turnLeft()
    turnLeft()
}

func doubleMove(){
    moveForward()
    moveForward()
}

func twoToggle(){
    doubleMove()
    toggleSwitch()
}

func fourToggle(){
    twoToggle()
    twoToggle()
}

for i in 1...2{
    twoToggle()
    turnAround()
    doubleMove()
}

turnRight()
fourToggle()
turnAround()
doubleMove()
doubleMove()
fourToggle()