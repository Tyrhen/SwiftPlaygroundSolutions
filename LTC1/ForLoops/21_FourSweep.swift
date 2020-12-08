func turnaround(){
    //turn around
    turnLeft()
    turnLeft()
}
func MoveCollect(){
    //move forward and collect gem
    moveForward()
    collectGem()
}
func cross(){
    //algo for cross pattern gem collection
    MoveCollect()
    MoveCollect()
    turnaround()
    moveForward()
    turnRight()
    MoveCollect()
    turnaround()
    moveForward()
    MoveCollect()
    moveForward()
}

for i in 1...4{
    cross()
}