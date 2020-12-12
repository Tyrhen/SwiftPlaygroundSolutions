func turnAndCollectGem() {
    //move in a 'zig-zag' and collect gem
    moveForward()
    turnLeft()
    moveForward()
    collectGem()
    turnRight()
}

while !isBlocked{
    turnAndCollectGem()
}