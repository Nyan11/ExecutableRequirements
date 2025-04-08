Class {
	#name : 'ExReqVerificationReport',
	#superclass : 'ExReqAbstractReport',
	#instVars : [
		'stepReports',
		'verification',
		'requirement'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'testing' }
ExReqVerificationReport >> isValid [

	^ self stepReports allSatisfy: #isValid.
]

{ #category : 'accessing' }
ExReqVerificationReport >> requirement [

	^ requirement
]

{ #category : 'accessing' }
ExReqVerificationReport >> requirement: anObject [

	requirement := anObject
]

{ #category : 'accessing' }
ExReqVerificationReport >> stepReports [

	^ stepReports
]

{ #category : 'accessing' }
ExReqVerificationReport >> verification [

	^ verification
]

{ #category : 'accessing' }
ExReqVerificationReport >> verification: anObject [

	verification := anObject.
	stepReports := verification steps collect: [ :each | each asReport ].
	stepReports do: [ :each | each requirement: self requirement ].
	stepReports overlappingPairsDo: [ :first :second |
		second previousStepReport: first ]
]
