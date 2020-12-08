func collectOrToggle(){
    //decision tree for collecting or toggling
    for i in range 1...2{
        moveForward()
        moveForward()

        if isOnClosedSwitch{
            toggleSwitch()
            
        }else if isOnGem{
            collectGem() 
        }
    }
}

collectOrToggle()
turnLeft()

moveForward()
moveForward()
turnLeft()

collectOrToggle()
turnRight()

moveForward()
turnRight()

collectOrToggle()