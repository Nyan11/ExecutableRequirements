Class {
	#name : 'NeoExReqPostconditionMethodProxyHandler',
	#superclass : 'NeoExReqMethodProxyHandler',
	#traits : 'TExReqPostconditionsHandler',
	#classTraits : 'TExReqPostconditionsHandler classTrait',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
NeoExReqPostconditionMethodProxyHandler >> aboutToReturnWithReceiver: receiver arguments: arguments [

	self verifyPostconditionsWithReceiver: receiver withArguments: arguments
]
