[when]CaseNote is of type {noteTypeEnum:ENUM:BAMCaseNoteType.noteType} = $bam : BAMCaseNoteType( noteType == "{noteTypeEnum}")

[when]CaseNote Additional Field {ccfColumn:ENUM:BAMCCFType.columnName} with value {ccfValue} = $ccf:BAMCCFType(columnName == "{ccfColumn}", columnValue == "{ccfValue}" )

[then] Change Action Event to {actionValues:ENUM:BAMCaseNoteType.eventAction} = $bam.setEventAction('{actionValues}')