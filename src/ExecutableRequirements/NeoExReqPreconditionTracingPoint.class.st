Class {
	#name : 'NeoExReqPreconditionTracingPoint',
	#superclass : 'NeoExReqTracingPoint',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
NeoExReqPreconditionTracingPoint >> verifyConditionsWithReceiver: anObject withArguments: aCollection [

	^ self verifyPreconditionsWithReceiver: anObject withArguments: aCollection
]

{ #category : 'as yet unclassified' }
NeoExReqPreconditionTracingPoint >> verifyPreconditionsWithReceiver: anObject withArguments: aCollection [

	self stepReports do: [ :stepReport |
		stepReport
			verifyPreconditionWithReceiver: anObject
			withArguments: aCollection ]
]
