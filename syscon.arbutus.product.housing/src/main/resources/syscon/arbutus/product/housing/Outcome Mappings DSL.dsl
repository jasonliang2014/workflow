[when]
      Outcome business rules mapping =
      $codeMappings : BusinessRuleReaction()

[then]
      Mismatch reaction: When housing attribute is {attribute} then outcome should be {outcomeCode:ENUM:BusinessRuleReaction.suitabilityDeterminationOutcome} =
      $codeMappings.getMismatchReaction().put("{attribute}", "{outcomeCode}");

[then]
      Non-Association conflict reaction: When code is {code:ENUM:BusinessRuleReaction.locationNonAssociation} then outcome should be {outcomeCode:ENUM:BusinessRuleReaction.suitabilityDeterminationOutcome} =
      $codeMappings.getNaConflictReaction().put("{code}", "{outcomeCode}");

[then]
      Element mismatch reaction: When LocationProperty code is {fromCode:ENUM:BusinessRuleMapping.locationProperty} then outcome should be {outcomeCode:ENUM:BusinessRuleReaction.suitabilityDeterminationOutcome} =
      $codeMappings.getLocationPropertyMismatchReaction().put("{fromCode}", "{outcomeCode}");

[then]
      Element mismatch reaction: When OffenderCategory code is {fromCode:ENUM:BusinessRuleMapping.offenderCategory} then outcome should be {outcomeCode:ENUM:BusinessRuleReaction.suitabilityDeterminationOutcome} =
      $codeMappings.getOffenderCategoryMismatchReaction().put("{fromCode}", "{outcomeCode}");

[then]
      Element mismatch reaction: When SecurityLevel changed from {fromCode:ENUM:BusinessRuleMapping.securityLevel} to {toCode:ENUM:BusinessRuleMapping.securityLevel} then outcome should be {outcomeCode:ENUM:BusinessRuleReaction.suitabilityDeterminationOutcome} =
      ElementMismatchReaction elementReaction = new ElementMismatchReaction();
      elementReaction.setOffenderValue("{fromCode}");
      elementReaction.setHousingValue("{toCode}");
      elementReaction.setOutcome("{outcomeCode}");
      $codeMappings.getSecurityLevelMismatchReaction().add(elementReaction); 