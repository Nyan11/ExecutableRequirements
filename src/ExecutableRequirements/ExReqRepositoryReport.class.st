Class {
	#name : 'ExReqRepositoryReport',
	#superclass : 'ExReqAbstractReport',
	#instVars : [
		'requirementReports',
		'repository',
		'tracingPoints',
		'announcer'
	],
	#category : 'ExecutableRequirements-Model-Report',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Report'
}

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> allNotValidRequirementReports [

	^ self requirementReports reject: [ :each | each isValid ]
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> allValidRequirementReports [

	^ self requirementReports select: [ :each | each isValid ]
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> annouceStepReportIsValid: aStepReport [

	self announcer announce:
			(ExReqStepReportIsValidEvent new
				 stepReport: aStepReport;
				 yourself)
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> annouceTracingPointInstalled [

	self announcer announce: (ExReqTracingPointInstalledEvent new)
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> annouceTracingPointRemoved [

	self announcer ifNil: [ ^ self ].
	self announcer announce: ExReqTracingPointRemovedEvent new
]

{ #category : 'initialization' }
ExReqRepositoryReport >> announcer [

	^ announcer
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> associatedClasses [
	^ self repository associatedClasses.
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> associatedMethods [
	^ self repository associatedMethods.
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> associatedNodes [
	^ self repository associatedNodes.
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> associatedPackages [

	^ self repository associatedPackages.
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> closeReport [

	super closeReport.
	repository := nil.
	requirementReports := {  }
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> createTracingPoints [

	| stepReports preconditionNodeDictionary postconditionNodeDictionary|
	"
	- Step1: Get all step reports.
	- Step2: Create a dictionary with all ast ->  step reports.
	- Step3: Create all PreconditionTracingPoint.
	- Step4: Create a dictionary with all ast & ast methodNode ->  step reports.
	- Step5: Create all PostconditionTracingPoint.
	"
	stepReports := self requirementReports flatCollect: [ :req |
		               req verificationReports flatCollect: #stepReports ].
	preconditionNodeDictionary := Dictionary new.
	postconditionNodeDictionary := Dictionary new.
	stepReports do: [ :stepReport |
		preconditionNodeDictionary
			at: stepReport step node
			ifPresent: [ :col | col add: stepReport ]
			ifAbsentPut: [ OrderedCollection with: stepReport ].
		postconditionNodeDictionary
			at: stepReport step node
			ifPresent: [ :col | col add: stepReport ]
			ifAbsentPut: [ Set with: stepReport ].
		postconditionNodeDictionary
			at: stepReport step node methodNode
			ifPresent: [ :col | col add: stepReport ]
			ifAbsentPut: [ Set with: stepReport ].
		 ].
	self tracingPoints: OrderedCollection new.
	self tracingPoints addAll: (preconditionNodeDictionary associations collect: [ :asso | ExReqTracingPoint installPreconditionOn: asso key withStepReports: asso value ]).
	self tracingPoints addAll: (postconditionNodeDictionary associations collect: [ :asso | ExReqTracingPoint installPostconditionOn: asso key withStepReports: asso value ]).
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> findRequirementReport: anExReqRequirement [
	| result |
	result := self requirementReports select: [ :each | each requirement isSimilarTo: anExReqRequirement ].
	result ifEmpty: [ ^ ExReqNotFoundError signalFor: anExReqRequirement in: self ].
	(result size > 1) ifTrue: [ ^ ExReqDuplicateRequirementsError signalFor: result in: self ].
	^ result first
]

{ #category : 'initialization' }
ExReqRepositoryReport >> initialize [

	super initialize.
	tracingPoints := OrderedCollection new.
	announcer := Announcer new
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> installTracingPoints [

	self createTracingPoints.
	self tracingPoints do: [ :each | each install ].
	self isInstalled: true.
	self isRunning: true.
	self annouceTracingPointInstalled
]

{ #category : 'testing' }
ExReqRepositoryReport >> isRepositoryReport [

	^ true
]

{ #category : 'testing' }
ExReqRepositoryReport >> isValid [

	^ self requirementReports allSatisfy: #isValid
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> removeTracingPoints [

	self tracingPoints do: [ :each | each remove ].
	self tracingPoints: {  }.
	self isRunning: false.
	self annouceTracingPointRemoved
]

{ #category : 'accessing' }
ExReqRepositoryReport >> repository [

	^ repository
]

{ #category : 'accessing' }
ExReqRepositoryReport >> repository: anObject [

	repository := anObject.
	requirementReports := repository requirements collect: [ :each |
		                      each asReport ].
	self repositoryReport: self.
]

{ #category : 'accessing' }
ExReqRepositoryReport >> requirementReports [

	^ requirementReports
]

{ #category : 'as yet unclassified' }
ExReqRepositoryReport >> subReports [

	^ self requirementReports
]

{ #category : 'accessing' }
ExReqRepositoryReport >> tracingPoints [

	^ tracingPoints
]

{ #category : 'accessing' }
ExReqRepositoryReport >> tracingPoints: aCollection [

	tracingPoints := aCollection
]
