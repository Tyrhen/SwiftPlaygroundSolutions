let character = Character()
let expert = Expert()

func GemSequence(){
    //coordination sequence for both
    //instances to collect Gems
    expert.moveForward()

    character.moveForward()
    character.collectGem()
    character.moveForward()
    character.turnRight()

    expert.turnLockUp()

    character.moveForward()
    character.moveForward()

    expert.turnLockDown()
    expert.turnLockDown()
    
    character.moveForward()
    character.collectGem()
}
GemSequence()