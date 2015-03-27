[when]When the sentence start from {fromDate:DATE:default}=
	supervision : Supervision( supervisionId : supervisionId) 
	sentence : Sentence( supervisionId == supervisionId , startDate >= "{fromDate}" )

[when]For offender supervision =
	supervision : Supervision( supervisionId : supervisionId) 

[then]Calculate good time = sentence.setCalulateGoodTime(true);

[then]Probable Discharge Date factor is {pddNum:1?[0-9]?[0-9]} {pddType:ENUM:Supervision.pddType} of sentence days from sentence end date = supervision.setPddFactor({pddNum}); supervision.setPddType("{pddType}"); 

[then]Parole Eligibility Date factor is {pedNum:1?[0-9]?[0-9]} {pedFactor:ENUM:Supervision.pedType} of sentence days from sentence start date = supervision.setPedFactor({pedNum}); supervision.setPedType("{pedFactor}"); 




