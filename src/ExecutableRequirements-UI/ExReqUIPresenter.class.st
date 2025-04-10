Class {
	#name : 'ExReqUIPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'repositoryReportPresenter',
		'requirementReportPresenter',
		'stepReportPresenter',
		'repositoryReport',
		'isRefreshOnGoing'
	],
	#category : 'ExecutableRequirements-UI-Core',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Core'
}

{ #category : 'initialization' }
ExReqUIPresenter >> connectPresenters [

	self repositoryReportPresenter requirementReportsList
		whenSelectedItemChangedDo: [ :reqReport |
		self requirementReportPresenter report: reqReport ].
	self requirementReportPresenter verificationsTable
		whenSelectedItemChangedDo: [ :subReport |
		self stepReportPresenter report: subReport ]
]

{ #category : 'layout' }
ExReqUIPresenter >> defaultLayout [

	^ SpPanedLayout newHorizontal positionOfSlider: 1/5;
		  add: self repositoryReportPresenter;
		  add: (SpPanedLayout newHorizontal
				   add: self requirementReportPresenter;
				   add: self stepReportPresenter;
				   yourself);
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqUIPresenter >> ensureAllTracingPointsAreRemoved [

	self repositoryReport ifNil: [ ^ self ].
	self repositoryReport removeTracingPoints
]

{ #category : 'initialization - deprecated' }
ExReqUIPresenter >> initializePresenter [

	super initializePresenter.
	isRefreshOnGoing := false.
	repositoryReportPresenter := ExReqUIRepositoryReportPresenter new.
	requirementReportPresenter := ExReqUIRequirementReportPresenter new.
	stepReportPresenter := ExReqUIStepReportPresenter new
]

{ #category : 'accessing' }
ExReqUIPresenter >> isRefreshOnGoing [

	^ isRefreshOnGoing
]

{ #category : 'accessing' }
ExReqUIPresenter >> isRefreshOnGoing: anObject [

	isRefreshOnGoing := anObject
]

{ #category : 'showing' }
ExReqUIPresenter >> open [

	| window |
	window := super open.
	window whenWillCloseDo: [ self ensureAllTracingPointsAreRemoved ].
	^ window
]

{ #category : 'accessing' }
ExReqUIPresenter >> refreshIcons [

	self repositoryReportPresenter refreshIcons.
	self requirementReportPresenter refreshIcons.
	self stepReportPresenter refreshIcons
]

{ #category : 'accessing' }
ExReqUIPresenter >> refreshWithDelay [

	self isRefreshOnGoing ifTrue: [ ^ self ].
	self isRefreshOnGoing: true.
	[
	self refreshIcons.
	(Delay forMilliseconds: 500) wait.
	self isRefreshOnGoing: false ]
		forkAt: Processor userBackgroundPriority
		named: 'Requirement Application update icons'
]

{ #category : 'accessing' }
ExReqUIPresenter >> repositoryReport [

	^ repositoryReport
]

{ #category : 'accessing' }
ExReqUIPresenter >> repositoryReport: anExReqRepository [

	repositoryReport := anExReqRepository.
	self repositoryReport announcer
		when: ExReqStepReportIsValidEvent 
		do: [ :evt | self refreshWithDelay ]
		for: self.
	self repositoryReport announcer
		when: ExReqTracingPointInstalledEvent 
		do: [ :evt | self refreshIcons ]
		for: self.
	self repositoryReport announcer
		when: ExReqTracingPointRemovedEvent
		do: [ :evt | self refreshIcons ]
		for: self.
	self updatePresenter
]

{ #category : 'accessing' }
ExReqUIPresenter >> repositoryReportPresenter [

	^ repositoryReportPresenter
]

{ #category : 'accessing' }
ExReqUIPresenter >> requirementReportPresenter [

	^ requirementReportPresenter
]

{ #category : 'accessing' }
ExReqUIPresenter >> stepReportPresenter [

	^ stepReportPresenter
]

{ #category : 'initialization' }
ExReqUIPresenter >> updatePresenter [

	self repositoryReportPresenter report: self repositoryReport.
]
