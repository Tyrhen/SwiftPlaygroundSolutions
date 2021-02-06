func gemMove(moves: Int, object: Expert){
    //move forward and collect gems (if possible)
    for i in 1...moves{
        if object.isOnGem{
            object.collectGem()
        }
        object.moveForward()
    }
}

let e1 = Expert()
let e2 = Expert()

world.place(e1, facing:.north,atColumn: 0, row: 4)
world.place(e2, facing:.east,atColumn: 0, row: 0)


gemMove(moves: 3, object: e2)
e2.turnLeft()
e2.turnLock(up: true, numberOfTimes: 2)
e2.turnRight()
e1.turnLock(up: false, numberOfTimes: 1)
e1.turnRight()
gemMove(moves: 3, object: e2)
e2.turnLock(up: false, numberOfTimes: 2)
gemMove(moves: 7, object: e1)
