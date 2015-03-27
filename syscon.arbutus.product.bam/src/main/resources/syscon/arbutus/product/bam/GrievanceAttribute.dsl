[when] Grievance type is {grievanceType:ENUM:BAMGrievanceType.issueType} and
      Subtype is {grievanceSubType:ENUM:BAMGrievanceType.issueSubType}
      Status being {grievanceStatus:ENUM:BAMGrievanceType.status}
      number of appeal is {numOfAppeal}
  	
	=
	$bam : BAMGrievanceType(issueType=="{grievanceType}", issueSubType=="{grievanceSubType}", status=="{grievanceStatus}", noOfAppeals=="{numOfAppeal}")
	


[then] Change Action Event to {actionValues:ENUM:BAMGrievanceType.eventAction} = $bam.setEventAction('{actionValues}')
