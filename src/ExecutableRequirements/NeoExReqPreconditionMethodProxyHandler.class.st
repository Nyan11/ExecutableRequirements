Class {
	#name : 'NeoExReqPreconditionMethodProxyHandler',
	#superclass : 'NeoExReqMethodProxyHandler',
	#traits : 'TExReqPreconditionsHandler',
	#classTraits : 'TExReqPreconditionsHandler classTrait',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
NeoExReqPreconditionMethodProxyHandler >> beforeExecutionWithReceiver: anObject arguments: anArrayOfObjects [

	self verifyPreconditionsWithReceiver: anObject withArguments: anArrayOfObjects
]
