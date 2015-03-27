[when] The status of the movement to be scheduled is {MovementStatus1:ENUM:TwoMovementsType.movementStatus} or 
                                          {MovementStatus2:ENUM:TwoMovementsType.movementStatus} or 
                                          {MovementStatus3:ENUM:TwoMovementsType.movementStatus} =
       
targetMovement : TwoMovementsType( bypassConflicts == null || == false && 
                                          movementOutStatus == null || == "{MovementStatus1}" || == "{MovementStatus2}" || == "{MovementStatus3}" && 
                                          target == true )

[when] The inmate is in the facility but scheduled for a movement. =
        movement : TwoMovementsType( returnDate >= targetMovement.moveDate && moveDate <= targetMovement.returnDate && movementOutStatus == "PENDING" || == "APPREQ" && movementInStatus != "COMPLETED" && target == false )

[when] The inmate is already out of the facility for an external movement. =
        movement : TwoMovementsType( returnDate >= targetMovement.moveDate && moveDate <= targetMovement.returnDate && movementOutStatus == "COMPLETED" && movementInStatus != "COMPLETED" && target == false )

[then] Notify the user of a conflict. = targetMovement.getConflicts().add(movement);