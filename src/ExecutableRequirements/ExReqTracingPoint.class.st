Class {
	#name : 'ExReqTracingPoint',
	#superclass : 'DebugPoint',
	#instVars : [
		'isPrecondition',
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

	^ TracingPoints ifNil: [ TracingPoints := Set new ]
]

{ #category : 'as yet unclassified' }
ExReqTracingPoint class >> installPostconditionOn: aNode withStepReports: aCollection [

	| tracingPoint |
	tracingPoint := self
		                tracingPointOn: aNode
		                withStepReports: aCollection.
	tracingPoint bePostcondition.
	self installTracingPoint: tracingPoint withBehaviors: {  }.
		^ tracingPoint
]

{ #category : 'as yet unclassified' }
ExReqTracingPoint class >> installPreconditionOn: aNode withStepReports: aCollection [

	| tracingPoint |
	tracingPoint := self
		                tracingPointOn: aNode
		                withStepReports: aCollection.
	tracingPoint bePrecondition.
	self installTracingPoint: tracingPoint withBehaviors: {  }.
	^ tracingPoint
]

{ #category : 'as yet unclassified' }
ExReqTracingPoint class >> installTracingPoint: dp withBehaviors: aListOfBehaviorClasses [

	| ml |
	ml := dp metaLink.

	dp link: ml.
	dp install.
	self add: dp.

	"adding behaviors"
	aListOfBehaviorClasses do: [ :bhc | dp addBehavior: bhc new ].

	^ dp
]

{ #category : 'removing' }
ExReqTracingPoint class >> remove: aDebugPoint [

	self all remove: aDebugPoint ifAbsent: [  ].
	DebugPoint all remove: aDebugPoint ifAbsent: [  ].
]

{ #category : 'as yet unclassified' }
ExReqTracingPoint class >> tracingPointOn: aNode withStepReports: aCollection [

	^ self new
		  node: aNode;
		  stepReports: aCollection;
		  yourself
]

{ #category : 'accessing' }
ExReqTracingPoint >> bePostcondition [

	isPrecondition := false
]

{ #category : 'accessing' }
ExReqTracingPoint >> bePrecondition [

	isPrecondition := true
]

{ #category : 'API' }
ExReqTracingPoint >> hitWithContext: aContext [

	"We do not emit an event for some obscure reason ..."
	self enabled ifFalse: [ ^ false ].
	self saveContext: aContext.
	(self checkBehaviors allSatisfy: [ :behavior | behavior execute ])
		ifFalse: [ ^ false ].
	self sideEffectBehaviors do: [ :behavior | behavior execute ].
	
	self enabled: false.
	self verifyStepsConditionWithContext: aContext.
	self enabled: true.
	^ true
]

{ #category : 'accessing' }
ExReqTracingPoint >> initialize [

	super initialize.
	isPrecondition := true.
]

{ #category : 'accessing' }
ExReqTracingPoint >> isPrecondition [

	^ isPrecondition
]

{ #category : 'default values' }
ExReqTracingPoint >> metaLink [

	^ self isPrecondition
		ifTrue: [ self preconditionMetaLink ]
		ifFalse: [ self postconditionMetaLink ]
]

{ #category : 'accessing' }
ExReqTracingPoint >> name [

	^ name ifNil: [ #TracingPoint ]
]

{ #category : 'default values' }
ExReqTracingPoint >> postconditionMetaLink [

	^ MetaLink new
		  metaObject: self;
		  options: #( #+ optionCompileOnLinkInstallation );
		  selector: #hitWithContext:;
		  control: #after;
		  arguments: #( context )
]

{ #category : 'default values' }
ExReqTracingPoint >> preconditionMetaLink [

	^ MetaLink new
		  metaObject: self;
		  options: #( #+ optionCompileOnLinkInstallation );
		  selector: #hitWithContext:;
		  arguments: #( context )
]

{ #category : 'removing' }
ExReqTracingPoint >> remove [

	| method |
	super remove.
	"method := self target node methodNode compiledMethod.
	method methodClass
		compile: method sourceCode
		classified: method protocolName
		notifying: nil"
]

{ #category : 'accessing' }
ExReqTracingPoint >> stepReports [

	^ stepReports
]

{ #category : 'accessing' }
ExReqTracingPoint >> stepReports: anObject [

	stepReports := anObject
]

{ #category : 'accessing' }
ExReqTracingPoint >> type [

	^ #TracingPoint
]

{ #category : 'API' }
ExReqTracingPoint >> verifyStepsConditionWithContext: aContext [

	self isPrecondition
		ifTrue: [
			self stepReports do: [ :stepReport |
				stepReport verifyStepPreconditionWithContext: aContext ] ]
		ifFalse: [
			self stepReports do: [ :stepReport |
				stepReport verifyStepPostconditionWithContext: aContext ] ]
]
