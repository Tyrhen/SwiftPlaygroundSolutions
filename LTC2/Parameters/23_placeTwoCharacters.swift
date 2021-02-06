let character = Character()
let expert = Expert()
func gemJump(jumps: Int){
    //jump forward and collect gem (if possible)
    for i in 1...jumps{
        if character.isOnGem{
            character.collectGem()
        }
        character.jump()
        character.jump()
        if character.isOnGem{
            character.collectGem()
        }
    }
}

world.place(expert, facing:.north,atColumn: 3, row: 0)
world.place(character, facing:.north,atColumn: 0, row: 0)

expert.toggleSwitch()
expert.turnLockUp()

gemJump(jumps: 2)
character.turnRight()
gemJump(jumps: 2)
character.turnLeft()
gemJump(jumps: 1)