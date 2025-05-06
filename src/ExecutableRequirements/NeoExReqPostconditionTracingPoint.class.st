Class {
	#name : 'NeoExReqPostconditionTracingPoint',
	#superclass : 'NeoExReqTracingPoint',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'accessing' }
NeoExReqPostconditionTracingPoint >> metaLink [

	^ super metaLink control: #after; yourself
]

{ #category : 'as yet unclassified' }
NeoExReqPostconditionTracingPoint >> verifyConditionsWithReceiver: anObject withArguments: aCollection [

	^ self
		  verifyPostconditionsWithReceiver: anObject
		  withArguments: aCollection
]

{ #category : 'as yet unclassified' }
NeoExReqPostconditionTracingPoint >> verifyPostconditionsWithReceiver: anObject withArguments: aCollection [

	self stepReports do: [ :stepReport |
		stepReport
			verifyPostconditionWithReceiver: anObject
			withArguments: aCollection ]
]
