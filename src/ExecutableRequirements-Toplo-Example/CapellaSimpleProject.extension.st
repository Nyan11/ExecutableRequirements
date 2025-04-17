Extension { #name : 'CapellaSimpleProject' }

{ #category : '*ExecutableRequirements-Toplo-Example' }
CapellaSimpleProject >> asExReqRequirements [

	^ self simpleExchanges collect: [ :each |
		  each asExReqRequirementForCapellaProjectNamed: self project name ]
]
