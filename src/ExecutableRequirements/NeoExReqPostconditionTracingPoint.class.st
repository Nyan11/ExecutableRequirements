Class {
	#name : 'NeoExReqPostconditionTracingPoint',
	#superclass : 'NeoExReqTracingPoint',
	#traits : 'TExReqPostconditionsHandler',
	#classTraits : 'TExReqPostconditionsHandler classTrait',
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
