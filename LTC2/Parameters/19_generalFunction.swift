let expert = Expert()
let character = Character()

func turnLock(up: Bool, numberOfTimes: Int){
    /*turns lock up or down a specific number
    of times based on a bool & int value*/
    if up == true{
        for i in 1...numberOfTimes{
            expert.turnLockUp()
        }
    }else{
        for i in 1...numberOfTimes{
            expert.turnLockDown()
        }
    }
    turnaround()
}

func CharacterLoop(){
    //collect gem after path is blocked
    character.moveForward()
    if character.isBlocked{
        character.collectGem()
    }
}
func turnaround(){
    //turnaround function for expert object
    expert.turnRight()
    expert.turnRight()
}
func turnaround2(){
    //turnaround function for character object
    character.turnRight()
    character.turnRight()
}

turnLock(up: true, numberOfTimes:3)
turnLock(up: true, numberOfTimes:3)

while !character.isBlocked{
    CharacterLoop()
    if character.isBlocked{
        turnaround2()
        character.moveForward()
        character.turnLeft()
        character.moveForward()
        character.turnRight()
        break
    }
}

turnLock(up: false, numberOfTimes:3)
turnLock(up: false, numberOfTimes:3)

while !character.isBlocked{
    CharacterLoop()
}
turnaround2()
character.moveForward()

turnLock(up: true, numberOfTimes:1)
turnLock(up: true, numberOfTimes:1)

while !character.isBlocked{
    CharacterLoop()
}
