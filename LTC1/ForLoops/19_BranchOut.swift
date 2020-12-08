func stairsetup(){
    //setup for solving the stairs
    moveForward()
    moveForward()
    turnRight()
}
func move8(){
    //move forward 8x times
    for i in 1...7{
        moveForward()
    }
}

func turnAround(){
    //turn around
    turnLeft()
    turnLeft()
}

func staircase(){
    //algorithm to solve traverse staircase and toggle switch
    move8()
    toggleSwitch()
    turnAround()
    move8()
    turnRight()
}

for i in 1...3{
    stairsetup()
    staircase()
}