Class {
	#name : 'ExReqUIRequirementReportPresenter',
	#superclass : 'ExReqAbstractReportPresenter',
	#instVars : [
		'requirementTitleLabel',
		'browseRequirementButton',
		'sourceDocumentLabel',
		'inspectSourceDocumentButton',
		'descriptionText',
		'verificationsTable'
	],
	#category : 'ExecutableRequirements-UI-Core',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Core'
}

{ #category : 'initialization - deprecated' }
ExReqUIRequirementReportPresenter >> actionBrowseRequirement [

	self report requirement sourceDocument method browse
]

{ #category : 'initialization - deprecated' }
ExReqUIRequirementReportPresenter >> actionInspectSourceDocument [

	self report requirement sourceDocument inspect
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> browseRequirementButton [

	^ browseRequirementButton
]

{ #category : 'layout' }
ExReqUIRequirementReportPresenter >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: (SpBoxLayout newHorizontal
				   hAlignCenter;
				   add: self titlePresenter;
				   yourself)
		  expand: false;
		  add: (self
				   makeButton: self browseRequirementButton
				   withEntryNamed: 'Title:'
				   withLabelPresenter: self requirementTitleLabel)
		  expand: false;
		  add: (self
				   makeButton: self inspectSourceDocumentButton
				   withEntryNamed: 'Document:'
				   withLabelPresenter: self sourceDocumentLabel)
		  expand: false;
		  add: (SpPanedLayout newVertical
				   add: (SpBoxLayout newVertical
						    spacing: 4;
						    add: (self makeEntryNamed: 'Descripiton') expand: false;
						    add: self descriptionText;
						    yourself);
				   add: (SpBoxLayout newVertical
						    spacing: 4;
						    add: (self makeEntryNamed: 'Verifications') expand: false;
						    add: self verificationsTable;
						    yourself);
				   yourself);
		  yourself
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> descriptionText [

	^ descriptionText
]

{ #category : 'initialization - deprecated' }
ExReqUIRequirementReportPresenter >> initializePresenter [

	super initializePresenter.
	self initializeVerificationsTable.
	browseRequirementButton := SpButtonPresenter new
		                           icon:
			                           (Smalltalk ui icons iconNamed: #nautilus);
		                           action: [ self actionBrowseRequirement ];
		                           yourself.
	inspectSourceDocumentButton := SpButtonPresenter new
		                               icon:
			                               (Smalltalk ui icons iconNamed:
					                                #inspect);
		                               action: [
			                               self actionInspectSourceDocument ];
		                               yourself.
	requirementTitleLabel := SpLabelPresenter new.
	sourceDocumentLabel := SpLabelPresenter new.
	descriptionText := SpTextPresenter new
		                   editable: false;
		                   yourself.
]

{ #category : 'initialization - deprecated' }
ExReqUIRequirementReportPresenter >> initializeVerificationsTable [

	verificationsTable := SpTreeTablePresenter new
		                      beResizable;
		                      contextMenu: (SpMenuPresenter new
				                       addItem: [ :item |
					                       item
						                       name: 'Inspect';
						                       action: [
							                       verificationsTable selectedItem inspect ];
						                       icon: [
							                       Smalltalk ui icons iconNamed: #inspect ];
						                       yourself ];
				                       addItem: [ :item |
					                       item
						                       name: 'Browse';
						                       action: [
							                       self actionBrowseRequirement ];
						                       icon: [
							                       Smalltalk ui icons iconNamed: #nautilus ];
						                       yourself ];
				                       yourself);
		                      whenSelectedItemChangedDo: [ :item |  ];
		                      children: [ :each |
			                      each isVerificationReport
				                      ifTrue: [ each stepReports ]
				                      ifFalse: [ {  } ] ];
		                      addColumn: ((SpStringTableColumn
				                        title: 'Class'
				                        evaluated: [ :subReport |
				                        self stringForFirstColumn: subReport ])
				                       displayBold: [ :r | r isVerificationReport ]);
		                      addColumn:
			                      ((SpImageTableColumn evaluated: [ :subReport |
				                        self statusIconFor: subReport ]) width: 24);
		                      yourself
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> inspectSourceDocumentButton [

	^ inspectSourceDocumentButton
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> refreshIcons [

	super refreshIcons.
	self verificationsTable refresh
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> requirementTitleLabel [

	^ requirementTitleLabel
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> sourceDocumentLabel [

	^ sourceDocumentLabel
]

{ #category : 'initialization - deprecated' }
ExReqUIRequirementReportPresenter >> stringForFirstColumn: aReport [

	^ aReport isVerificationReport ifTrue: [ 'verif' ] ifFalse: [ 'step' ]
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> titleLabel [

	^ 'Requirement Report'
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> updatePresenter [

	super updatePresenter.
	self report ifNil: [
		self enabled: false.
		^ self ].
	self enabled: true.
	self requirementTitleLabel label: self report requirement title.
	self sourceDocumentLabel label:
		self report requirement sourceDocument printString.
	self descriptionText text: (self report requirement description ifNil: [ '' ]).
	self verificationsTable
		items: self report verificationReports;
		expandRoots
]

{ #category : 'accessing' }
ExReqUIRequirementReportPresenter >> verificationsTable [

	^ verificationsTable
]
