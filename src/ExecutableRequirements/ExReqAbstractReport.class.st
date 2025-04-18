Class {
	#name : 'ExReqAbstractReport',
	#superclass : 'Object',
	#instVars : [
		'isInstalled',
		'isRunning',
		'repositoryReport'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'as yet unclassified' }
ExReqAbstractReport >> closeReport [
	self subReports do: #closeReport.
]

{ #category : 'initialization' }
ExReqAbstractReport >> initialize [

	isInstalled := false.
	isRunning := false.
]

{ #category : 'testing' }
ExReqAbstractReport >> isInstalled [

	^ isInstalled
]

{ #category : 'testing' }
ExReqAbstractReport >> isInstalled: aBoolean [

	isInstalled := aBoolean.
	self subReports do: [ :each | each isInstalled: aBoolean ].
]

{ #category : 'testing' }
ExReqAbstractReport >> isRepositoryReport [

	^ false
]

{ #category : 'testing' }
ExReqAbstractReport >> isRequirementReport [

	^ false
]

{ #category : 'testing' }
ExReqAbstractReport >> isRunning [

	^ isRunning
]

{ #category : 'testing' }
ExReqAbstractReport >> isRunning: aBoolean [

	isRunning := aBoolean.
	self subReports do: [ :each | each isRunning: aBoolean ].
]

{ #category : 'testing' }
ExReqAbstractReport >> isStepReport [

	^ false
]

{ #category : 'testing' }
ExReqAbstractReport >> isValid [

	^ self shouldBeImplemented
]

{ #category : 'testing' }
ExReqAbstractReport >> isVerificationReport [

	^ false
]

{ #category : 'accessing' }
ExReqAbstractReport >> repositoryReport [

	^ repositoryReport
]

{ #category : 'accessing' }
ExReqAbstractReport >> repositoryReport: aRepositoryReport [

	repositoryReport := aRepositoryReport.
	self subReports do: [ :each | each repositoryReport: aRepositoryReport ].
]

{ #category : 'as yet unclassified' }
ExReqAbstractReport >> subReports [

	^ self shouldBeImplemented
]
