func turnRightMoveForward(){
    expert.turnRight()
    expert.moveForward()
}

let expert = Expert()
world.place(expert, atColumn: 1, row: 6)

expert.turnLeft()
expert.collectGem()
expert.moveForward()
expert.turnLockUp()
expert.turnRight()

for i in 1...5{
    expert.moveForward()
}

turnRightMoveForward()
expert.collectGem()
expert.turnRight()
turnRightMoveForward()
expert.turnLockUp()
turnRightMoveForward()

while !expert.isBlocked{
    expert.moveForward()
}
expert.collectGem()

