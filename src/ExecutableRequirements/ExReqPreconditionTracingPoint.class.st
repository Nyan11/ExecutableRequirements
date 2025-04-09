Class {
	#name : 'ExReqPreconditionTracingPoint',
	#superclass : 'ExReqTracingPoint',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'api' }
ExReqPreconditionTracingPoint >> verifyStepsConditionWithContext: aContext [

	self stepReports do: [ :stepReport |
		stepReport verifyStepPreconditionWithContext: aContext ]
]
