var gemCounter = 0

func MoveGemCheck(movements: Int){
    //move forward and collect gem when possible
    for i in 1...movements{
        moveForward()
        if isOnGem{
            collectGem()
            gemCounter+=1
        }
    }
}


MoveGemCheck(movements: 7)
turnRight()
MoveGemCheck(movements: 2)
turnRight()
MoveGemCheck(movements: 7)