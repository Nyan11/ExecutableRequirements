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

	preconditionTracingPoint := ExReqTracingPoint new
		                            bePrecondition;
		                            node: astNode;
		                            stepReports: self stepReports;
		                            yourself.
	postconditionTracingPoint := ExReqTracingPoint new
		                             bePostcondition;
		                             node: astNode;
		                             stepReports: self stepReports;
		                             yourself.

	self installTracingPoint: preconditionTracingPoint withBehaviors: {  }.
	self installTracingPoint: postconditionTracingPoint withBehaviors: {  }
]

{ #category : 'as yet unclassified' }
ExReqTracingPointContainer >> installTracingPoint: dp withBehaviors: aListOfBehaviorClasses [

	| ml |
	ml := dp metaLink.

	dp link: ml.
	dp install.
	ExReqTracingPoint add: dp.

	"adding behaviors"
	aListOfBehaviorClasses do: [ :bhc | dp addBehavior: bhc new ].

	^ dp
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
