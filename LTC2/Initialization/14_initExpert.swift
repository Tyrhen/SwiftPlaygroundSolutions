let expert = Expert()

var gemCount = 0
func unlocksequence(){
    //move forward and turn up the lock
    expert.moveForward()
    expert.moveForward()
    expert.moveForward()
    expert.turnLockUp()
    doubleback()
}

func doubleback(){
    //turn around
    expert.turnLeft()
    expert.turnLeft()
}

func forward3R (){
    //forward 3x and turn right
    expert.moveForward()
    expert.moveForward()
    expert.moveForward()
    expert.turnRight()
}

func gemdoubleback(){
    //move forward until a gem is collected
    //then turn around
    expert.moveForward()
    expert.moveForward()
    expert.moveForward()
    expert.collectGem()
    gemCount+=1
    doubleback()
}

unlocksequence()
while gemCount != 3{
    forward3R()
    gemdoubleback()
}