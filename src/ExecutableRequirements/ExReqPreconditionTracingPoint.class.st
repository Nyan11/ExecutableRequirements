Class {
	#name : 'ExReqPreconditionTracingPoint',
	#superclass : 'ExReqTracingPoint',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'api' }
ExReqPreconditionTracingPoint >> breakInContext: aContext node: aNode [

	self stepReports
		reject: [ :each | each preconditionIsValid ]
		thenDo: [ :stepReport |
			stepReport verifyStepPreconditionWithContext: aContext ]
]
