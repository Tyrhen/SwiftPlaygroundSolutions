func doublemove(){
    moveForward()
    moveForward()
}

for i in 1 ... 4 {
    moveForward()
    if isOnGem{
        collectGem()
    }else if !isOnGem{
        turnLeft()
        doublemove()
        collectGem()
        turnLeft()
        turnLeft()
    
        doublemove()
        turnLeft()
    }
}