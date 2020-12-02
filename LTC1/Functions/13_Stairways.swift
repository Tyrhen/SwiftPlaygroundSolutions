func collectGemTurnAround(){
    //collect gem and turn around
    moveForward()
    moveForward()
    collectGem()
    turnLeft()
    turnLeft()
    moveForward()
    moveForward()
}

func solveRow(){
    //gem collect pattern for rows
    collectGemTurnAround()
    collectGemTurnAround()
}

for i in 1...3{
    solveRow()
    turnRight()
    moveForward()
    turnLeft()
}