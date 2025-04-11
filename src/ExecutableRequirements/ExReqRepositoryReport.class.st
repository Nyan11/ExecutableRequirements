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
ExReqRepositoryReport >> createTracingPoints [

	| stepReports nodeDictionary |
	"
	- Step1: Get all step reports.
	- Step2: Form a dictionary with all ast ->  step reports .
	- Step3: Create all TracingPoint.
	"
	stepReports := self requirementReports flatCollect: [ :req |
		               req verificationReports flatCollect: #stepReports ].
	nodeDictionary := Dictionary new.
	stepReports do: [ :stepReport |
		nodeDictionary
			at: stepReport step node
			ifPresent: [ :col | col add: stepReport ]
			ifAbsentPut: [ OrderedCollection with: stepReport ] ].
	self tracingPoints: (nodeDictionary values collect: [ :col |
			 ExReqTracingPointContainer new
				 stepReports: col;
				 createTracingPoint;
				 yourself ])
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
	self tracingPoints do: [ :each |
		each preconditionTracingPoint install.
		each postconditionTracingPoint install ].
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

	self tracingPoints do: [ :each |
		each preconditionTracingPoint remove.
		each postconditionTracingPoint remove ].
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
