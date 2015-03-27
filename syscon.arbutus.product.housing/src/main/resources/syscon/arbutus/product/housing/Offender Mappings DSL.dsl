[when]Offender business rules mapping =
      $codeMappings : BusinessRuleMapping()

[then]
      When Caution Code is {cautionCode:ENUM:BusinessRuleMapping.cautionCode} then map Offender Category to {offenderCategoryCode:ENUM:BusinessRuleMapping.offenderCategory} =
      $codeMappings.getOffenderCategory().put("{cautionCode}", "{offenderCategoryCode}");

[then]
      When Health Issue is {healthIssues:ENUM:BusinessRuleMapping.healthIssues} then map Location Property to {locationPropertyCode:ENUM:BusinessRuleMapping.locationProperty} =
      $codeMappings.getLocationProperty().put("{healthIssues}", "{locationPropertyCode}");

[then]
      When the Assessment Result is {assessmentResult:ENUM:BusinessRuleMapping.assessmentResult} then map Security Level to {securityLevelCode:ENUM:BusinessRuleMapping.securityLevel} =
      $codeMappings.getSecurityLevel().put("{assessmentResult}", "{securityLevelCode}");

[then]
      When Case Sentence Status is {caseSentenceStatus:ENUM:BusinessRuleMapping.caseSentenceStatus} then map Sentence Status to {sentenceStatusCode:ENUM:BusinessRuleMapping.sentenceStatus} =
      $codeMappings.getSentenceStatus().put("{caseSentenceStatus}", "{sentenceStatusCode}");

[then]
      When Sex is {sex:ENUM:BusinessRuleMapping.sex} then map Offender Gender to {offenderGenderCode:ENUM:BusinessRuleMapping.offenderGender} =
      $codeMappings.getOffenderGender().put("{sex}", "{offenderGenderCode}");

[then] print {msg} = System.out.println("[HOUSING DEBUG]: " + "{msg}");