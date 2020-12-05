func gemcollect(){
    //algo to solve gem pattern
    turnRight()
    moveForward()
    collectGem()
    moveForward()
    collectGem()
}

func switchcollect(){
    //algo to solve switch pattern
    moveForward()
    toggleSwitch()
    moveForward()
    toggleSwitch()
}

func turnaround(){
    //turn around
    turnLeft()
    turnLeft()
}

func restart(){
    //helper function to get back to middle
    //of the maze
    moveForward()
    moveForward()
}
func advance(){
    //setup to move to the next row of 
    //gems and switches
    turnLeft()
    moveForward()
}

for i in 1...3{
    gemcollect()
    turnaround()
    restart()
    switchcollect()
    turnaround()
    restart()
    advance()
}