func powerMove(){
    //collect all gems in a straight line
    for i in 1...3{
        collectGem()
        moveForward()
    }
}

powerMove()

turnRight()
moveForward()
turnRight()

powerMove()

turnLeft()
moveForward()
turnLeft()

powerMove()
