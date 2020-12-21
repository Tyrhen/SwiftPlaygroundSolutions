
var switchCount = 0

func startline(){
    //setup sequence for maze traversal
    greenPortal.isActive = true
    moveForward()
    moveForward()
    greenPortal.isActive = false
    moveForward()
}

func mazetraverse(){
    //Left-hand maze traversl
    if !isBlockedRight{
        turnLeft()
    }
    if isBlocked{
        turnLeft()
        turnLeft()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        switchCount+=1
    }
}

startline()
while switchCount != 3{
    mazetraverse()
    moveForward()
}