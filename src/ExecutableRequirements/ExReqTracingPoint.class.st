Class {
	#name : 'ExReqTracingPoint',
	#superclass : 'Breakpoint',
	#instVars : [
		'stepReports'
	],
	#classVars : [
		'TracingPoints'
	],
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'accessing' }
ExReqTracingPoint class >> all [

	^ TracingPoints ifNil: [
		  TracingPoints := OrderedCollection new ]
]

{ #category : 'cleanup' }
ExReqTracingPoint class >> cleanUp [

	<script>
	ExReqPreconditionTracingPoint allInstances do: [ :each | each remove ].
	ExReqPostconditionTracingPoint allInstances do: [ :each | each remove ].
	self all removeAll
]

{ #category : 'accessing' }
ExReqTracingPoint class >> removeBreakpoint: aBreakpoint [

	| nodes |
	nodes := aBreakpoint link nodes copy.
	self notifyBreakpointRemoved: aBreakpoint fromNodes: nodes.
	self all remove: aBreakpoint ifAbsent: [ ].
]

{ #category : 'api' }
ExReqTracingPoint >> breakInContext: aContext node: aNode [

	self isEnabled ifFalse: [ ^ self ].
	self enabled: false.
	self verifyStepsConditionWithContext: aContext.
	self enabled: true
]

{ #category : 'initialization' }
ExReqTracingPoint >> initialize [

	super initialize.
	enabled := true
]

{ #category : 'accessing' }
ExReqTracingPoint >> stepReports [

	^ stepReports
]

{ #category : 'accessing' }
ExReqTracingPoint >> stepReports: aCollection [

	stepReports := aCollection
]

{ #category : 'api' }
ExReqTracingPoint >> verifyStepsConditionWithContext: aContext [

	self shouldBeImplemented
]
