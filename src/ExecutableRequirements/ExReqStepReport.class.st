Class {
	#name : 'ExReqStepReport',
	#superclass : 'ExReqAbstractReport',
	#instVars : [
		'step',
		'previousStepReport',
		'requirement',
		'preconditionValidity',
		'postconditionValidity'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'testing' }
ExReqStepReport >> hasPostcondition [

	^ self step postcondition isNotNil
]

{ #category : 'testing' }
ExReqStepReport >> hasPrecondition [

	^ self step precondition isNotNil
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
ExReqStepReport >> isValid [
	^ self preconditionIsValid and: [self postconditionIsValid].
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

{ #category : 'as yet unclassified' }
ExReqStepReport >> verifyStepPostconditionWithContext: aContext [

	self isValid ifTrue: [ ^ self ].
	self isPreviousStepValid ifFalse: [
		preconditionValidity := false.
		postconditionValidity := false.
		^ self ].

	self step postcondition ifNil: [
		postconditionValidity := true.
		^ self ].
	self preconditionIsValid ifFalse: [ ^ self ].

	(self step postcondition valueWithEnoughArguments: {
			 aContext receiver.
			 aContext arguments.
			 self requirement })
		ifTrue: [ postconditionValidity := true ]
		ifFalse: [ preconditionValidity := false ]
]

{ #category : 'as yet unclassified' }
ExReqStepReport >> verifyStepPreconditionWithContext: aContext [

	self isValid ifTrue: [ ^ self ].
	self isPreviousStepValid ifFalse: [
		preconditionValidity := false.
		postconditionValidity := false.
		^ self ].
	self step precondition ifNil: [
		preconditionValidity := true.
		^ self ].
	(self step precondition valueWithEnoughArguments: {
			 aContext receiver.
			 aContext arguments.
			 self requirement }) ifTrue: [ preconditionValidity := true ]
]
