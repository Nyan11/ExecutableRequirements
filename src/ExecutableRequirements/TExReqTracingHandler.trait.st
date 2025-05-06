Trait {
	#name : 'TExReqTracingHandler',
	#instVars : [
		'stepReports'
	],
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'adding' }
TExReqTracingHandler >> addStepReport: aStepReport [

	self stepReports add: aStepReport
]

{ #category : 'accessing' }
TExReqTracingHandler >> stepReports [

	^ stepReports ifNil: [ stepReports := OrderedCollection new ]
]

{ #category : 'accessing' }
TExReqTracingHandler >> stepReports: aCollection [

	stepReports := aCollection
]
