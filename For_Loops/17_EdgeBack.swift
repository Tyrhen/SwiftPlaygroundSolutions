func double(){
    //move forward twice
    moveForward()
    moveForward()
}

func turnAround(){
    //turn around
    turnLeft()
    turnLeft()
}

for i in 1...4{
    double()
    toggleSwitch()
    turnAround()
    double()
    turnRight()
}