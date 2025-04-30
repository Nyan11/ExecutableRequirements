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
		'numberOfSteps',
		'trigger'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'as yet unclassified' }
ExReqStepReport >> announceValidity [

	self repositoryReport annouceStepReportIsValid: self
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> closeReport [

	super closeReport.
]

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

{ #category : 'testing' }
ExReqStepReport >> hasTrigger [

	^ trigger
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> initialize [

	super initialize.
	trigger := false.
	preconditionValidity := false.
	postconditionValidity := false
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

	^ self hasTrigger and: [ self preconditionIsValid and: [ self postconditionIsValid ] ]
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

	^ postconditionValidity or: [ self hasPostcondition not ]
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> preconditionIsValid [

	^ preconditionValidity or: [ self hasPrecondition not ]
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

	self step ifNil: [ ^ self ].
	postconditionValidity ifTrue: [ ^ self ].
	self preconditionIsValid ifFalse: [ ^ self ].
	self step postcondition ifNil: [
		postconditionValidity := true.
		self announceValidity.
		^ self ].
	postconditionValidity := self hasPostcondition
		                         ifTrue: [
			                         self step postcondition
				                         valueWithEnoughArguments: {
						                         aContext receiver.
						                         aContext arguments.
						                         self requirement } ]
		                         ifFalse: [ true ].

	self isValid ifTrue: [ self announceValidity ]
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> verifyStepPreconditionWithContext: aContext [

	trigger := true.
	preconditionValidity ifTrue: [ ^ self ].
	self isPreviousStepValid ifFalse: [
		preconditionValidity := false.
		postconditionValidity := false.
		^ self ].
	preconditionValidity := self hasPrecondition
		                        ifTrue: [
			                        self step precondition
				                        valueWithEnoughArguments: {
						                        aContext receiver.
						                        aContext arguments.
						                        self requirement } ]
		                        ifFalse: [ true ].
	self isValid ifTrue: [ self announceValidity ]
]
