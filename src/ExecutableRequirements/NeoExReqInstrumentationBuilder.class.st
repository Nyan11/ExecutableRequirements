Class {
	#name : 'NeoExReqInstrumentationBuilder',
	#superclass : 'Object',
	#instVars : [
		'preconditionTracingPoints',
		'postconditionTracingPoints',
		'methodProxies'
	],
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'initialization' }
NeoExReqInstrumentationBuilder >> initialize [

	super initialize.
	methodProxies := Dictionary new.
	preconditionTracingPoints := Dictionary new.
	postconditionTracingPoints := Dictionary new
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installAllStepReports: aCollection [

	| tracingPoints |
	aCollection do: [ :each | self installStepReport: each ].
	tracingPoints := self preconditionTracingPoints values
	                 , self postconditionTracingPoints values.

	tracingPoints do: [ :each |
		each link: each metaLink.
		each install ].
	self methodProxies valuesDo: [ :each |
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

	self methodProxies
		at: aNode
		ifPresent: [ :p | p handler addPostconditionStepReport: aStepReport ]
		ifAbsentPut: [
			| handler |
			handler := NeoExReqMethodProxyHandler new
				           addPostconditionStepReport: aStepReport;
				           yourself.
			MpMethodProxy onMethod: aNode compiledMethod handler: handler ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installPreconditionMethodProxyForStepReport: aStepReport withNode: aNode [

	self methodProxies
		at: aNode
		ifPresent: [ :p | p handler addPreconditionStepReport: aStepReport ]
		ifAbsentPut: [
			| handler |
			handler := NeoExReqMethodProxyHandler new
				           addPreconditionStepReport: aStepReport;
				           yourself.
			MpMethodProxy onMethod: aNode compiledMethod handler: handler ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installStepReport: aStepReport [

	| astNode |
	astNode := aStepReport step node.
	astNode isMethod
		ifTrue: [ self installMethodProxyForStepReport: aStepReport withNode: astNode
			 ]
		ifFalse: [
			self
				installTracingPointForStepReport: aStepReport
				withNode: astNode ]
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> installTracingPointForStepReport: aStepReport withNode: aNode [

	"Quand la postcondition est nil, il ne trigger pas sauf si on retire la method proxy."
	"L'installation de la méthode proxy retire le preconditionTracingPoint".
	self
		installPostconditionMethodProxyForStepReport: aStepReport
		withNode: aNode methodNode.
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
			NeoExReqPostconditionTracingPoint new
				node: aNode;
				addStepReport: aStepReport;
				yourself ]
]

{ #category : 'testing' }
NeoExReqInstrumentationBuilder >> isEmpty [

	^ self methodProxies isEmpty and: [
		  self preconditionTracingPoints isEmpty and: [
			  self postconditionTracingPoints isEmpty ] ]
]

{ #category : 'testing' }
NeoExReqInstrumentationBuilder >> isNotEmpty [
	^ self isEmpty not
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> methodProxies [

	^ methodProxies
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> postconditionTracingPoints [

	^ postconditionTracingPoints
]

{ #category : 'accessing' }
NeoExReqInstrumentationBuilder >> preconditionTracingPoints [

	^ preconditionTracingPoints
]

{ #category : 'as yet unclassified' }
NeoExReqInstrumentationBuilder >> uninstallAllStepReports [

	| tracingPoints |
	tracingPoints := self preconditionTracingPoints values
	                 , self postconditionTracingPoints values.

	self methodProxies valuesDo: [ :each | each uninstall ].
	tracingPoints do: [ :each | each uninstall ].
	self preconditionTracingPoints removeAll.
	self postconditionTracingPoints removeAll.
	self methodProxies removeAll
]
