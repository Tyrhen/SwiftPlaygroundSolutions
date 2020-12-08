func DecisionTree(){
    //Decision tree for manuevering through maze
    //and collecting required gems and switches
    if isOnClosedSwitch{
        toggleSwitch()
    }
    if isOnGem{
        collectGem()
    }
    if isBlocked{
        turnRight()
    }
    moveForward()
}

for i in 1...9{
    DecisionTree()
}
