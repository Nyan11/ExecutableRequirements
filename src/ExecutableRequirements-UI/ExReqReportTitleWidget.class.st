Class {
	#name : 'ExReqReportTitleWidget',
	#superclass : 'SpPresenter',
	#instVars : [
		'report',
		'statusImage',
		'textLabel'
	],
	#category : 'ExecutableRequirements-UI-Widgets',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Widgets'
}

{ #category : 'accessing' }
ExReqReportTitleWidget >> changeLabel: aString [

	self textLabel label: aString
]

{ #category : 'accessing' }
ExReqReportTitleWidget >> changeStatusIcon: anIcon [

	self statusImage image: anIcon
]

{ #category : 'initialization - deprecated' }
ExReqReportTitleWidget >> defaultLayout [

	^ SpBoxLayout newHorizontal
		  vAlignCenter;
		  spacing: 4;
		  add: self statusImage expand: false;
		  add: self textLabel expand: false;
		  yourself
]

{ #category : 'initialization - deprecated' }
ExReqReportTitleWidget >> initializePresenter [

	statusImage := SpImagePresenter new
		               image: (Smalltalk ui icons iconNamed: #testNotRun);
		               yourself.
	textLabel := SpLabelPresenter new
		             label: 'Change me ...';
		             displayBold: [ :t | true ];
		             yourself
]

{ #category : 'accessing' }
ExReqReportTitleWidget >> statusImage [

	^ statusImage
]

{ #category : 'accessing' }
ExReqReportTitleWidget >> textLabel [

	^ textLabel
]
