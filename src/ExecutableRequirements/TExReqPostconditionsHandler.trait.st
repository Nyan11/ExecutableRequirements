Trait {
	#name : 'TExReqPostconditionsHandler',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
TExReqPostconditionsHandler >> verifyPostconditionsWithReceiver: anObject withArguments: aCollection [

	self stepReports do: [ :stepReport |
		stepReport
			verifyPostconditionWithReceiver: anObject
			withArguments: aCollection ]
]
