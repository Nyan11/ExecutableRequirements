Extension { #name : 'CapellaSimpleObject' }

{ #category : '*ExecutableRequirements-Toplo-Example' }
CapellaSimpleObject >> asExReqRequirement [

	^ ExReqRequirement new title: self exReqTitle; description: self exReqDescription; yourself
]

{ #category : '*ExecutableRequirements-Toplo-Example' }
CapellaSimpleObject >> asExReqRequirementForCapellaProjectNamed: aString [

	^ self asExReqRequirement
		  sourceDocument: (ExReqCapellaDocument new
				   name: aString;
				   id: self id;
				   yourself);
		  yourself
]

{ #category : '*ExecutableRequirements-Toplo-Example' }
CapellaSimpleObject >> prettyPrintCapellaObject [

	^ '"<1s>"[<2s>]' expandMacrosWith: self name with: self id.
]
