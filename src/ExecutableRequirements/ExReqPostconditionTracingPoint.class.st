Class {
	#name : 'ExReqPostconditionTracingPoint',
	#superclass : 'ExReqTracingPoint',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'links' }
ExReqPostconditionTracingPoint >> breakLink [

	^ super breakLink
		  control: #after;
		  yourself
]

{ #category : 'api' }
ExReqPostconditionTracingPoint >> verifyStepsConditionWithContext: aContext [

	self stepReports do: [ :stepReport | stepReport verifyStepPostconditionWithContext: aContext ].

]
