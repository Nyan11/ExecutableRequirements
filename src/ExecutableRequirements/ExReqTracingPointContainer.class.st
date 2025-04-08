Class {
	#name : 'ExReqTracingPointContainer',
	#superclass : 'Object',
	#instVars : [
		'stepReports',
		'preconditionTracingPoint',
		'postconditionTracingPoint'
	],
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'initialization' }
ExReqTracingPointContainer >> createTracingPoint [

	| astNode |
	astNode := self stepReports first step node.
	preconditionTracingPoint := ExReqPreconditionTracingPoint new
		                            node: astNode;
		                            yourself.
	postconditionTracingPoint := ExReqPostconditionTracingPoint new
		                             node: astNode;
		                             yourself.
	preconditionTracingPoint stepReports: self stepReports.
	postconditionTracingPoint stepReports: self stepReports.
]

{ #category : 'initialization' }
ExReqTracingPointContainer >> postconditionTracingPoint [

	^ postconditionTracingPoint
]

{ #category : 'initialization' }
ExReqTracingPointContainer >> preconditionTracingPoint [

	^ preconditionTracingPoint
]

{ #category : 'accessing' }
ExReqTracingPointContainer >> stepReports [

	^ stepReports
]

{ #category : 'accessing' }
ExReqTracingPointContainer >> stepReports: anObject [

	stepReports := anObject
]
