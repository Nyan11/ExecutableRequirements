Class {
	#name : 'NeoExReqInstrumentationBuilder',
	#superclass : 'Object',
	#instVars : [
		'preconditionMethodProxies',
		'postconditionMethodProxies',
		'preconditionTracingPoints',
		'postconditionTracingPoints'
	],
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'initialization' }
NeoExReqInstrumentationBuilder >> initialize [

	super initialize.
	preconditionMethodProxies := Dictionary new.
	postconditionMethodProxies := Dictionary new.
	preconditionTracingPoints := Dictionary new.
	postconditionTracingPoints := Dictionary new
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installAllStepReports: aCollection [

	| tracingPoints methodProxies |
	aCollection do: [ :each | self installStepReport: each ].
	tracingPoints := self preconditionTracingPoints values
	                 , self postconditionTracingPoints values.
	methodProxies := self preconditionMethodProxies values
	                 , self postconditionMethodProxies values.

	tracingPoints do: [ :each |
		each link: each metaLink.
		each install ].
	methodProxies do: [ :each |
		each
			install;
			enableInstrumentation ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installMethodProxyForStepReport: aStepReport withNode: aNode [

	self
		installPreconditionMethodProxyForStepReport: aStepReport
		withNode: aNode.
	aStepReport hasPostcondition ifFalse: [ ^ self ].
	self
		installPostconditionMethodProxyForStepReport: aStepReport
		withNode: aNode
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installPostconditionMethodProxyForStepReport: aStepReport withNode: aNode [

	self postconditionMethodProxies
		at: aNode
		ifPresent: [ :p | p handler addStepReport: aStepReport ]
		ifAbsentPut: [
			| handler |
			handler := NeoExReqPostconditionMethodProxyHandler new
				           addStepReport: aStepReport;
				           yourself.
			MpMethodProxy onMethod: aNode compiledMethod handler: handler ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installPreconditionMethodProxyForStepReport: aStepReport withNode: aNode [

	self preconditionMethodProxies
		at: aNode
		ifPresent: [ :p | p handler addStepReport: aStepReport ]
		ifAbsentPut: [
			| handler |
			handler := NeoExReqPreconditionMethodProxyHandler new
				           addStepReport: aStepReport;
				           yourself.
			MpMethodProxy onMethod: aNode compiledMethod handler: handler ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installStepReport: aStepReport [

	| astNode |
	astNode := aStepReport step node.
	astNode isMethod
		ifTrue: [
		self installMethodProxyForStepReport: aStepReport withNode: astNode ]
		ifFalse: [
			"self
				installTracingPointForStepReport: aStepReport
				withNode: astNode" ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installTracingPointForStepReport: aStepReport withNode: aNode [

	self preconditionTracingPoints
		at: aNode
		ifPresent: [ :tp | tp addStepReport: aStepReport ]
		ifAbsentPut: [
			NeoExReqPreconditionTracingPoint new
				node: aNode;
				addStepReport: aStepReport;
				yourself ].
	aStepReport hasPostcondition ifFalse: [ ^ self ].
	self postconditionTracingPoints
		at: aNode
		ifPresent: [ :tp | tp addStepReport: aStepReport ]
		ifAbsentPut: [
			NeoExReqPreconditionTracingPoint new
				node: aNode;
				addStepReport: aStepReport;
				yourself ].
	self
		installPostconditionMethodProxyForStepReport: aStepReport
		withNode: aNode methodNode.
]

{ #category : 'testing' }
NeoExReqInstrumentationBuilder >> isEmpty [

 ^ self preconditionMethodProxies isEmpty and: [self postconditionMethodProxies isEmpty	and: [self preconditionTracingPoints isEmpty and: [ self postconditionTracingPoints isEmpty ]]].
]

{ #category : 'testing' }
NeoExReqInstrumentationBuilder >> isNotEmpty [
	^ self isEmpty not
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> postconditionMethodProxies [

	^ postconditionMethodProxies
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> postconditionTracingPoints [

	^ postconditionTracingPoints
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> preconditionMethodProxies [

	^ preconditionMethodProxies
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> preconditionTracingPoints [

	^ preconditionTracingPoints
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> uninstallAllStepReports [

	| tracingPoints methodProxies |
	tracingPoints := self preconditionTracingPoints values
	                 , self postconditionTracingPoints values.
	methodProxies := self preconditionMethodProxies values
	                 , self postconditionMethodProxies values.

	tracingPoints do: [ :each | each uninstall ].
	methodProxies do: [ :each | each uninstall ].
	self preconditionTracingPoints removeAll.
	self postconditionTracingPoints removeAll.
	self preconditionMethodProxies removeAll.
	self postconditionMethodProxies removeAll.
]
