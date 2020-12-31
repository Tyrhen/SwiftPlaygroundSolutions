let expert = Expert()
let character = Character()
var GemCount = 0

func TopLevelPattern(){
    //movement pattern for the top level of 
    //the puzzle
    if character.isOnGem{
        character.collectGem()
        GemCount+=1
        character.turnRight()
    }
    character.moveForward()
    character.moveForward()
}

func BottomLevelPattern(){
    //movement pattern for the bottom level
    //of the puzzle
    if character.isOnGem{
        GemCount += 1
        character.collectGem()
    }
    if !character.isBlockedRight{
        character.turnRight()
    }
    if character.isBlocked{
        
        character.turnRight()
        character.turnRight()
    }
    character.moveForward()
}

for i in 1...4{
    expert.turnLock(up: true, numberOfTimes: 4)
    expert.turnRight()
}

while GemCount != 3{
    TopLevelPattern()
}

for i in 1...4{
    expert.turnLock(up: false, numberOfTimes: 3)
    expert.turnRight()
}

while GemCount != 7{
    BottomLevelPattern()
}