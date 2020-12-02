func turnAround(){
    //turn around
    turnLeft()
    turnLeft()
}

func solveStair(){
    //collect gem and turn around
    moveForward()
    collectGem()
    turnAround()
    moveForward()
}

for i in 1...2{
    solveStair()
    solveStair()
    turnLeft()
}