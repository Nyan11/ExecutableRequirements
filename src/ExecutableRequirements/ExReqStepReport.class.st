Class {
	#name : 'ExReqStepReport',
	#superclass : 'ExReqAbstractReport',
	#instVars : [
		'step',
		'previousStepReport',
		'nextStepReport',
		'requirement',
		'preconditionValidity',
		'postconditionValidity',
		'stepNumber',
		'numberOfSteps'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'accessing' }
ExReqStepReport >> hasNextStepReport [

	^ nextStepReport isNotNil
]

{ #category : 'testing' }
ExReqStepReport >> hasPostcondition [

	^ self step postcondition isNotNil
]

{ #category : 'testing' }
ExReqStepReport >> hasPrecondition [

	^ self step precondition isNotNil
]

{ #category : 'accessing' }
ExReqStepReport >> hasPreviousStepReport [

	^ previousStepReport isNotNil
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> initialize [

	super initialize.
	preconditionValidity := false.
	postconditionValidity := false.
	
]

{ #category : 'testing' }
ExReqStepReport >> isPreviousStepValid [

	self previousStepReport ifNil: [ ^ true ].
	^ self previousStepReport isValid
]

{ #category : 'testing' }
ExReqStepReport >> isStepReport [

	^ true
]

{ #category : 'testing' }
ExReqStepReport >> isValid [
	^ self preconditionIsValid and: [self postconditionIsValid].
]

{ #category : 'accessing' }
ExReqStepReport >> nextStepReport [

	^ nextStepReport
]

{ #category : 'accessing' }
ExReqStepReport >> nextStepReport: anObject [

	nextStepReport := anObject
]

{ #category : 'accessing' }
ExReqStepReport >> numberOfSteps [

	^ numberOfSteps
]

{ #category : 'accessing' }
ExReqStepReport >> numberOfSteps: anObject [

	numberOfSteps := anObject
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> postconditionIsValid [

	^ postconditionValidity
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> preconditionIsValid [

	^ preconditionValidity
]

{ #category : 'accessing' }
ExReqStepReport >> previousStepReport [

	^ previousStepReport
]

{ #category : 'accessing' }
ExReqStepReport >> previousStepReport: anObject [

	previousStepReport := anObject
]

{ #category : 'accessing' }
ExReqStepReport >> requirement [

	^ requirement
]

{ #category : 'accessing' }
ExReqStepReport >> requirement: anObject [

	requirement := anObject
]

{ #category : 'accessing' }
ExReqStepReport >> step [

	^ step
]

{ #category : 'accessing' }
ExReqStepReport >> step: anObject [

	step := anObject
]

{ #category : 'accessing' }
ExReqStepReport >> stepNumber [

	^ stepNumber
]

{ #category : 'accessing' }
ExReqStepReport >> stepNumber: anObject [

	stepNumber := anObject
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> subReports [

	^ {  }
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> verifyStepPostconditionWithContext: aContext [
	"
	0 - Precondition ok -> ok
	1 - precondition valid
	2 - Postcondition =  nil -> true
	3 - Postcondition not nil -> evaluation
	"

	self postconditionIsValid ifTrue: [ ^ self ].
	self preconditionIsValid ifFalse: [ ^ self ].
	self step postcondition ifNil: [
		postconditionValidity := true.
		^ self ].
	preconditionValidity := postconditionValidity := self step
		                                                 postcondition
		                                                 valueWithEnoughArguments:
			                                                 {
				                                                 aContext receiver.
				                                                 aContext
					                                                 arguments.
				                                                 self requirement }.
	self isValid ifTrue: [
		self repositoryReport annouceStepReportIsValid: self ]
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> verifyStepPreconditionWithContext: aContext [
	"
	0 - Precondition ok -> ok
	1 - Previous step valid
	2 - Precondition =  nil -> true
	3 - Precondition not nil -> evaluation
	"
	self preconditionIsValid ifTrue: [ ^ self ].
	self isPreviousStepValid ifFalse: [
		preconditionValidity := false.
		postconditionValidity := false.
		^ self ].

	self step precondition ifNil: [
		preconditionValidity := true.
		^ self ].

	preconditionValidity := self step precondition
		                        valueWithEnoughArguments: {
				                        aContext receiver.
				                        aContext arguments.
				                        self requirement }
]
