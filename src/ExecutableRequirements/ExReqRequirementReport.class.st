Class {
	#name : 'ExReqRequirementReport',
	#superclass : 'ExReqAbstractReport',
	#instVars : [
		'verificationReports',
		'requirement'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'testing' }
ExReqRequirementReport >> isValid [

	^ self verificationReports allSatisfy: #isValid.
]

{ #category : 'accessing' }
ExReqRequirementReport >> requirement [

	^ requirement
]

{ #category : 'accessing' }
ExReqRequirementReport >> requirement: anObject [

	requirement := anObject.
	verificationReports := requirement verifications collect: [ :each |
		                       each asReport requirement: anObject; yourself ]
]

{ #category : 'accessing' }
ExReqRequirementReport >> verificationReports [

	^ verificationReports
]
