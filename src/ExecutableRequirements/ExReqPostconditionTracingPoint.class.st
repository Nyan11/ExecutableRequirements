Class {
	#name : 'ExReqPostconditionTracingPoint',
	#superclass : 'ExReqTracingPoint',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'api' }
ExReqPostconditionTracingPoint >> breakInContext: aContext node: aNode [

	self stepReports
		reject: [ :each | each postconditionIsValid ]
		thenDo: [ :stepReport |
			stepReport verifyStepPostconditionWithContext: aContext ]
]

{ #category : 'links' }
ExReqPostconditionTracingPoint >> breakLink [

	^ super breakLink
		  control: #after;
		  yourself
]
