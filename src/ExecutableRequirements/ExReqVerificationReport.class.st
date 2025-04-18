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

{ #category : 'as yet unclassified' }
ExReqVerificationReport >> closeReport [

	super closeReport.
	requirement := nil.
	verification := nil.
	stepReports := {  }
]

{ #category : 'testing' }
ExReqVerificationReport >> isValid [

	^ self stepReports allSatisfy: #isValid.
]

{ #category : 'testing' }
ExReqVerificationReport >> isVerificationReport [

	^ true
]

{ #category : 'accessing' }
ExReqVerificationReport >> requirement [

	^ requirement
]

{ #category : 'accessing' }
ExReqVerificationReport >> requirement: anObject [

	requirement := anObject.
	self subReports do: [ :each | each requirement: anObject ]
]

{ #category : 'accessing' }
ExReqVerificationReport >> stepReports [

	^ stepReports
]

{ #category : 'as yet unclassified' }
ExReqVerificationReport >> subReports [

	^ self stepReports
]

{ #category : 'accessing' }
ExReqVerificationReport >> verification [

	^ verification
]

{ #category : 'accessing' }
ExReqVerificationReport >> verification: anObject [

	| numberOfSteps |
	verification := anObject.
	stepReports := verification steps collect: [ :each | each asReport ].
	stepReports do: [ :each | each requirement: self requirement ].
	stepReports overlappingPairsDo: [ :first :second |
		first nextStepReport: second.
		second previousStepReport: first ].
	numberOfSteps := stepReports size.
	stepReports withIndexDo: [ :step :index |
		step
			stepNumber: index;
			numberOfSteps: numberOfSteps ]
]
