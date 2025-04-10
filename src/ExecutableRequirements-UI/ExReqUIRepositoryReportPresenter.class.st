Class {
	#name : 'ExReqUIRepositoryReportPresenter',
	#superclass : 'ExReqAbstractReportPresenter',
	#instVars : [
		'pragmaLabel',
		'requirementReportsList',
		'inspectReportButton',
		'installTracingPointButton',
		'removeTracingPointButton'
	],
	#category : 'ExecutableRequirements-UI-Core',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Core'
}

{ #category : 'layout' }
ExReqUIRepositoryReportPresenter >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: (SpBoxLayout newHorizontal
				   hAlignCenter;
				   add: self titlePresenter;
				   yourself)
		  expand: false;
		  add:
		  (self
			   makeEntryNamed: 'Pragma:'
			   withLabelPresenter: self pragmaLabel)
		  expand: false;
		  add: self inspectReportButton expand: false;
		  add: self installTracingPointButton expand: false;
		  add: self removeTracingPointButton expand: false;
		  add: self requirementReportsList;
		  yourself
]

{ #category : 'initialization - deprecated' }
ExReqUIRepositoryReportPresenter >> initializePresenter [

	super initializePresenter.
	self initializeRequirmentReportsList.
	pragmaLabel := SpLabelPresenter new.
	inspectReportButton := SpButtonPresenter new
		                       label: 'Inspect Repository';
		                       icon:
			                       (Smalltalk ui icons iconNamed: #inspect);
		                       action: [ self report inspect ];
		                       yourself.
	installTracingPointButton := SpButtonPresenter new
		                             enabled: false;
		                             label: 'Install';
		                             icon:
			                             (Smalltalk ui icons iconNamed:
					                              #smallDoIt);
		                             action: [
			                             self report installTracingPoints ];
		                             yourself.
	removeTracingPointButton := SpButtonPresenter new
		                            enabled: false;
		                            label: 'Remove';
		                            icon:
			                            (Smalltalk ui icons iconNamed: #stop);
		                            action: [
			                            self report removeTracingPoints ];
		                            yourself
]

{ #category : 'initialization - deprecated' }
ExReqUIRepositoryReportPresenter >> initializeRequirmentReportsList [

	requirementReportsList := SpTablePresenter new
		                          beResizable;
		                          contextMenu: (SpMenuPresenter new
				                           addItem: [ :item |
					                           item
						                           name: 'Inspect';
						                           action: [
							                           requirementReportsList selectedItem
								                           inspect ];
						                           icon: [
							                           Smalltalk ui icons iconNamed:
									                           #inspect ];
						                           yourself ];
				                           addItem: [ :item |
					                           item
						                           name: 'Browse';
						                           action: [
							                           requirementReportsList selectedItem
								                           requirement sourceDocument method
								                           browse ];
						                           icon: [
							                           Smalltalk ui icons iconNamed:
									                           #nautilus ];
						                           yourself ];
				                           yourself);
		                          addColumn: (SpStringTableColumn
				                           title: 'Title'
				                           evaluated: [ :reqReport |
				                           reqReport requirement title ]);
		                          addColumn:
			                          ((SpImageTableColumn evaluated: [
				                            :reqReport |
				                            self statusIconFor: reqReport ])
				                           width: 24);
		                          yourself
]

{ #category : 'accessing' }
ExReqUIRepositoryReportPresenter >> inspectReportButton [

	^ inspectReportButton
]

{ #category : 'accessing' }
ExReqUIRepositoryReportPresenter >> installTracingPointButton [

	^ installTracingPointButton
]

{ #category : 'layout' }
ExReqUIRepositoryReportPresenter >> pragmaLabel [

	^ pragmaLabel
]

{ #category : 'accessing' }
ExReqUIRepositoryReportPresenter >> refreshIcons [

	| running |
	super refreshIcons.
	self report ifNil: [ ^ self ].
	self requirementReportsList refresh.
	self report isInstalled ifFalse: [
		self installTracingPointButton enabled: true.
		^ self ].
	running := self report isRunning.
	self installTracingPointButton enabled: running not.
	self removeTracingPointButton enabled: running
]

{ #category : 'accessing' }
ExReqUIRepositoryReportPresenter >> removeTracingPointButton [

	^ removeTracingPointButton
]

{ #category : 'layout' }
ExReqUIRepositoryReportPresenter >> requirementReportsList [

	^ requirementReportsList
]

{ #category : 'accessing' }
ExReqUIRepositoryReportPresenter >> titleLabel [

	^ 'Repository Report'
]

{ #category : 'accessing' }
ExReqUIRepositoryReportPresenter >> updatePresenter [

	super updatePresenter.
	self report ifNil: [ ^ self ].
	self pragmaLabel label: self report repository pragmaSelector.
	self requirementReportsList items: self report requirementReports
]
