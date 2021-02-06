func collectGemUntilBlocked(){
    while !expert.isBlocked{
        if expert.isOnGem{
            expert.collectGem()
        }
        
        if !expert.isBlocked{
            expert.moveForward()
        }
    }
}
let expert = Expert()
world.place(expert, facing:.south,atColumn: 1, row: 8)

collectGemUntilBlocked()
expert.turnLockDown()
expert.turnLeft()

collectGemUntilBlocked()
expert.turnLockUp()
expert.turnRight()

collectGemUntilBlocked()