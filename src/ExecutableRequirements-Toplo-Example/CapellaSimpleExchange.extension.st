Extension { #name : 'CapellaSimpleExchange' }

{ #category : '*ExecutableRequirements-Toplo-Example' }
CapellaSimpleExchange >> exReqDescription [

	^ 'The component named <1s> in the function <2s> transmit <3s> to the component named <4s> in the function <5s>'
		  expandMacrosWithArguments: {
				  self simpleSource simpleComponent prettyPrintCapellaObject.
				  self simpleSource prettyPrintCapellaObject.
				  self prettyPrintCapellaObject.
				  self simpleTarget prettyPrintCapellaObject.
				  self simpleTarget simpleComponent prettyPrintCapellaObject }
]

{ #category : '*ExecutableRequirements-Toplo-Example' }
CapellaSimpleExchange >> exReqTitle [

	^ '<1s> send "<2s>" to <3s>'
		  expandMacrosWith: self simpleSource simpleComponent name
		  with: self name
		  with: self simpleTarget simpleComponent name
]
