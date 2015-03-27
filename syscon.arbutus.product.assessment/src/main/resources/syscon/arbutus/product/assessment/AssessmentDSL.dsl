[when]Assessment Type is {assessmentType:ENUM:ScoreRange.assessmentType}
and
Assessment Score is greater than or equal to {minValue:1?[0-9]?[0-9]?[0-9]?[0-9]}
and
Assessment Score is less than or equal to {maxValue:1?[0-9]?[0-9]?[0-9]?[0-9]} = scoreRange : ScoreRange( assessmentType == "{assessmentType}" , intermediateScore >= {minValue} && intermediateScore <= {maxValue} )

[then]Assessment Result is {assessmentResult:ENUM:ScoreRange.type} = scoreRange.setType("{assessmentResult}");
