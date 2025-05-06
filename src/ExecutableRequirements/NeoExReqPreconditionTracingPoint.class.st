Class {
	#name : 'NeoExReqPreconditionTracingPoint',
	#superclass : 'NeoExReqTracingPoint',
	#traits : 'TExReqPreconditionsHandler',
	#classTraits : 'TExReqPreconditionsHandler classTrait',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
NeoExReqPreconditionTracingPoint >> verifyConditionsWithReceiver: anObject withArguments: aCollection [

	^ self verifyPreconditionsWithReceiver: anObject withArguments: aCollection
]
