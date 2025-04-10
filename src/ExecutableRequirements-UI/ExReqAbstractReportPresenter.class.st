Class {
	#name : 'ExReqAbstractReportPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'report',
		'titlePresenter'
	],
	#category : 'ExecutableRequirements-UI-Core',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Core'
}

{ #category : 'initialization - deprecated' }
ExReqAbstractReportPresenter >> initializePresenter [

	titlePresenter := ExReqReportTitleWidget new
]

{ #category : 'as yet unclassified' }
ExReqAbstractReportPresenter >> makeButton: aButton withEntryNamed: aString [

	^ SpBoxLayout newHorizontal
		  vAlignCenter;
		  spacing: 4;
		  add: aButton withConstraints: [ :c |
			  c height: 24.
			  c width: 24 ];
		  add: (self makeEntryNamed: aString);
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqAbstractReportPresenter >> makeButton: aButton withEntryNamed: aString withLabelPresenter: aLabelPresenter [

	^ SpBoxLayout newHorizontal
		  spacing: 4;
		  add: aButton withConstraints: [ :c | c height: 24. c width: 24 ];
		  add: (self makeEntryNamed: aString) expand: false;
		  add: aLabelPresenter;
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqAbstractReportPresenter >> makeEntryNamed: aString [

	^ SpLabelPresenter new
		  label: aString;
		  displayBold: [ :t | true ];
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqAbstractReportPresenter >> makeEntryNamed: aString withLabelPresenter: aLabelPresenter [

	^ SpBoxLayout newHorizontal
		  spacing: 4;
		  add: (self makeEntryNamed: aString)
		  expand: false;
		  add: aLabelPresenter;
		  yourself
]

{ #category : 'accessing' }
ExReqAbstractReportPresenter >> refreshIcons [

	self titlePresenter changeLabel: self titleLabel.
	self titlePresenter changeStatusIcon:
		(self statusIconFor: self report)
]

{ #category : 'accessing' }
ExReqAbstractReportPresenter >> report [

	^ report
]

{ #category : 'accessing' }
ExReqAbstractReportPresenter >> report: anObject [

	report := anObject.
	self updatePresenter
]

{ #category : 'as yet unclassified' }
ExReqAbstractReportPresenter >> statusIconFor: anExReqReport [

	anExReqReport ifNil: [ ^ Smalltalk ui icons iconNamed: #blank ].
	anExReqReport isInstalled ifFalse: [
		^ Smalltalk ui icons iconNamed: #testNotRun ].
	anExReqReport isValid ifTrue: [
		^ Smalltalk ui icons iconNamed: #testGreen ].
	anExReqReport isRunning ifTrue: [
		^ Smalltalk ui icons iconNamed: #testYellow ].
	^ Smalltalk ui icons iconNamed: #testRed
]

{ #category : 'accessing' }
ExReqAbstractReportPresenter >> titleLabel [

	^ self shouldBeImplemented
]

{ #category : 'accessing' }
ExReqAbstractReportPresenter >> titlePresenter [

	^ titlePresenter
]

{ #category : 'accessing' }
ExReqAbstractReportPresenter >> updatePresenter [

	super updatePresenter.
	self refreshIcons
]
