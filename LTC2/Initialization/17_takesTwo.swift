let expert = Expert()
let character = Character()
var flag = 1

func move3(){
    //move forward a distance of 3
    expert.moveForward()
    expert.moveForward()
    expert.moveForward()
}

func TurnMove2(){
    //turn right and move forward a distance of 2
    expert.turnRight()
    expert.moveForward()
    expert.moveForward()
}

func UnlockDownSequence(){
    //algo for lock sequence
    TurnMove2()
    expert.turnLeft()
    if flag == 1{
        expert.turnLockDown()
        expert.turnLockDown()
        flag = -1
    }else if flag != 1{
        expert.turnLockUp()
    }
    TurnMove2()
    expert.turnRight()
}

expert.turnLeft()
for i in 1...2{
    move3()
    UnlockDownSequence()
    move3()
}

while !character.isBlocked{
    character.moveForward()
    if character.isOnGem{
        character.collectGem()
    }
    if character.isOnClosedSwitch{
        character.toggleSwitch()
    }
}