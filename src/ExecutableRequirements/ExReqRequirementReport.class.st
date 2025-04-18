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

{ #category : 'as yet unclassified' }
ExReqRequirementReport >> closeReport [

	super closeReport.
	requirement := nil.
	verificationReports := {  }
]

{ #category : 'testing' }
ExReqRequirementReport >> isRequirementReport [

	^ true
]

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
		                       each asReport ].
	self subReports do: [ :each | each requirement: anObject ]
]

{ #category : 'accessing' }
ExReqRequirementReport >> subReports [

	^ self verificationReports
]

{ #category : 'accessing' }
ExReqRequirementReport >> verificationReports [

	^ verificationReports
]
