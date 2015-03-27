[then]Multiple intermittent sentences {caseAcrossOrAlone:ENUM:Sentence.caseAcrossOrAlone}  case is to be
{aggregatedOrNot:ENUM:Sentence.aggregatedOrNot} 
= sentence.setCaseAcrossOrAlone("{caseAcrossOrAlone}");sentence.setAggregatedOrNot("{aggregatedOrNot}");

[then]sentence {receiveGoodTime:ENUM:Sentence.receiveGoodTime} good time credit of {gtNum:1?[0-9]?[0-9]}  
{goodTimeType:ENUM:Sentence.goodTimeType} of sentence term = 
sentence.setReceiveGoodTime("{receiveGoodTime}");sentence.setGoodTimeType("{goodTimeType}");sentence.setGoodTimeFactorInterm({gtNum});

[then]If the Day of Sentence is not the same as the 1st Report On day of the intermittent sentence,
inmate receives{noOfDays:1?[0-9]?[0-9]}of day to his sentence term = sentence.setNoOfDaysWhenRDaySameAsSDay({noOfDays});


[then]When an offender serves {comparisionQuantifier:ENUM:Sentence.comparisionQuantifier} {noOfHour:1?[0-9]?[0-9]} hours in a day then it will satisfy {noOfDaysForHoursInADay:1?[0-9]?[0-9]} days else {noOfDaysForHoursInADayElse:1?[0-9]?[0-9]} days fulfilled in a sentence  =
sentence.setComparisionQuantifier("{comparisionQuantifier}");sentence.setNoOfHours({noOfHour});sentence.setNoOfDaysForHoursInADay({noOfDaysForHoursInADay});
sentence.setNoOfDaysForHoursInADayElse({noOfDaysForHoursInADayElse});

[then]When an offender consecutively stays to {consecutiveStay:1?[0-9]?[0-9]} days that will satisfy {noOfDayConse:1?[0-9]?[0-9]} days fulfilled in a sentence = 
sentence.setNoOfDaysForConsecutiveStay({noOfDayConse});sentence.setConsecutiveStay({consecutiveStay});





