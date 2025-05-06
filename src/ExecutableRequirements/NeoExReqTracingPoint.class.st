Class {
	#name : 'NeoExReqTracingPoint',
	#superclass : 'DebugPoint',
	#traits : 'TExReqTracingHandler',
	#classTraits : 'TExReqTracingHandler classTrait',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
NeoExReqTracingPoint >> disableInstrumentation [

	self disable
]

{ #category : 'as yet unclassified' }
NeoExReqTracingPoint >> enableInstrumentation [

	self enable
]

{ #category : 'accessing' }
NeoExReqTracingPoint >> metaLink [

	^ MetaLink new
		  metaObject: self;
		  options: #( #+ optionCompileOnLinkInstallation );
		  selector: #verifyConditionsWithContext:;
		  arguments: #( context );
		  yourself
]

{ #category : 'accessing' }
NeoExReqTracingPoint >> name [

	^ name ifNil: [ #TracingPoint ]
]

{ #category : 'accessing' }
NeoExReqTracingPoint >> type [

	^ #TracingPoint
]

{ #category : 'initialization' }
NeoExReqTracingPoint >> uninstall [
	self remove.
]

{ #category : 'as yet unclassified' }
NeoExReqTracingPoint >> verifyConditionsWithContext: aContext [

	<debuggerCompleteToSender>
	DebugPointManager notifyDebugPointHit: self inContext: aContext.
	self enabled ifFalse: [ ^ false ].
	self saveContext: aContext.
	(self checkBehaviors allSatisfy: [ :behavior | behavior execute ])
		ifFalse: [ ^ false ].
	self sideEffectBehaviors do: [ :behavior | behavior execute ].

	self disableInstrumentation.
	self
		verifyConditionsWithReceiver: aContext receiver
		withArguments: aContext arguments.
	self enableInstrumentation.

	^ true
]

{ #category : 'as yet unclassified' }
NeoExReqTracingPoint >> verifyConditionsWithReceiver: anObject withArguments: aCollection [

	^ self subclassResponsibility
]
