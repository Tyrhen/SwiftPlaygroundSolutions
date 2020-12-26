let expert = Expert()

func move(distance: Int){
    //move forward a defined distance
    for i in 1...distance{
        expert.moveForward()
    }
}

move(distance: 6)
expert.turnRight()

move(distance: 2)
expert.turnRight()

for i in 1..2{
move(distance: 5)
expert.turnLeft()
}

expert.turnLockUp()
expert.turnLeft()

for i in 1...2{
move(distance: 3)
expert.turnRight()
}

move(distance: 4)
expert.collectGem()
