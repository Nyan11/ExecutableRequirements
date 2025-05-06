Class {
	#name : 'NeoExReqMethodProxyHandler',
	#superclass : 'MpHandler',
	#instVars : [
		'postconditionStepReports',
		'preconditionStepReports'
	],
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'evaluating' }
NeoExReqMethodProxyHandler >> aboutToReturnWithReceiver: anObject arguments: anArrayOfObjects [

	self postconditionStepReports do: [ :stepReport |
		stepReport
			verifyPostconditionWithReceiver: anObject
			withArguments: anArrayOfObjects ]
]

{ #category : 'adding' }
NeoExReqMethodProxyHandler >> addPostconditionStepReport: aStepReport [

	self postconditionStepReports add: aStepReport
]

{ #category : 'adding' }
NeoExReqMethodProxyHandler >> addPreconditionStepReport: aStepReport [

	self preconditionStepReports add: aStepReport
]

{ #category : 'evaluating' }
NeoExReqMethodProxyHandler >> afterExecutionWithReceiver: anObject arguments: anArrayOfObjects returnValue: aReturnValue [

	self postconditionStepReports do: [ :stepReport |
		stepReport
			verifyPostconditionWithReceiver: anObject
			withArguments: anArrayOfObjects ].
	^ aReturnValue
]

{ #category : 'evaluating' }
NeoExReqMethodProxyHandler >> beforeExecutionWithReceiver: anObject arguments: anArrayOfObjects [

	self preconditionStepReports , self postconditionStepReports do: [ :stepReport |
		stepReport
			verifyPreconditionWithReceiver: anObject
			withArguments: anArrayOfObjects ]
]

{ #category : 'accessing' }
NeoExReqMethodProxyHandler >> postconditionStepReports [

	^ postconditionStepReports ifNil: [ postconditionStepReports := OrderedCollection new ].

]

{ #category : 'accessing' }
NeoExReqMethodProxyHandler >> preconditionStepReports [

	^ preconditionStepReports ifNil: [ preconditionStepReports := OrderedCollection new ].

]
