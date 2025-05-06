Trait {
	#name : 'TExReqPreconditionsHandler',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'as yet unclassified' }
TExReqPreconditionsHandler >> verifyPreconditionsWithReceiver: anObject withArguments: aCollection [

	self stepReports do: [ :stepReport |
		stepReport
			verifyPreconditionWithReceiver: anObject
			withArguments: aCollection ]
]
