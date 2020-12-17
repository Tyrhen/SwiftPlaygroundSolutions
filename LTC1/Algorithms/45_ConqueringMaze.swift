func navigateAroundWall() {
    // moved until blocked, if blocked turn right
    if isBlockedRight {
        moveForward()
    }  else {
        turnRight()
        moveForward()
    }
    if isBlockedRight && isBlocked{
        turnLeft()
    }
}

while !isOnGem {
    navigateAroundWall()
    }

collectGem()
