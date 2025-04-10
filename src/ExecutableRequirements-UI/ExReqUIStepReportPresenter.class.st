Class {
	#name : 'ExReqUIStepReportPresenter',
	#superclass : 'ExReqAbstractReportPresenter',
	#instVars : [
		'previousStepButton',
		'previousStepStatus',
		'nextStepButton',
		'nextStepStatus',
		'astNodeWidget',
		'preconditionWidget',
		'postconditionWidget'
	],
	#category : 'ExecutableRequirements-UI-Core',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Core'
}

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> astNodeWidget [

	^ astNodeWidget
]

{ #category : 'as yet unclassified' }
ExReqUIStepReportPresenter >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: self defaultTopLayout expand: false;
		  add: (SpPanedLayout newVertical
				   add: self astNodeWidget;
				   add: (SpPanedLayout newVertical
						    add: self preconditionWidget;
						    add: self postconditionWidget;
						    yourself);
				   yourself);
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqUIStepReportPresenter >> defaultTopLayout [

	^ SpBoxLayout newHorizontal
		  spacing: 4;
		  add: self previousStepButton withConstraints: [ :c |
			  c width: 24.
			  c height: 24 ];
		  add: self previousStepStatus expand: false;
		  add: (SpBoxLayout newHorizontal
				   hAlignCenter;
				   add: self titlePresenter;
				   yourself)
		  expand: true;
		  add: self nextStepStatus expand: false;
		  add: self nextStepButton withConstraints: [ :c |
		  c width: 24.
		  c height: 24 ];
		  yourself
]

{ #category : 'initialization - deprecated' }
ExReqUIStepReportPresenter >> initializePresenter [

	super initializePresenter.
	previousStepButton := SpButtonPresenter new icon: ((Smalltalk ui icons iconNamed: #right)
	rotateBy: #pi
	centerAt: 8 asPoint); yourself.
	previousStepStatus := SpImagePresenter new image: (Smalltalk ui icons iconNamed: #testNotRun); yourself.
	nextStepButton := SpButtonPresenter new icon: (Smalltalk ui icons iconNamed: #right); yourself.
	nextStepStatus := SpImagePresenter new image: (Smalltalk ui icons iconNamed: #testNotRun); yourself.
	astNodeWidget := ExReqConditionWidget new changeLabel: 'class >> method'; yourself.
	preconditionWidget := ExReqConditionWidget new changeLabel: 'Precondition'; yourself.
	postconditionWidget := ExReqConditionWidget new changeLabel: 'Postcondition'; yourself.
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> nextStepButton [

	^ nextStepButton
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> nextStepStatus [

	^ nextStepStatus
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> postconditionWidget [

	^ postconditionWidget
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> preconditionWidget [

	^ preconditionWidget
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> previousStepButton [

	^ previousStepButton
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> previousStepStatus [

	^ previousStepStatus
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> titleLabel [

	"Need to add space because layout is bugged in Spec."
	self report ifNil: [ ^ 'Step Report               ' ].
	self report isVerificationReport ifTrue: [ ^ 'Verification Report' ].
	^ 'Step Report (<1p>/<2p>)'
		  expandMacrosWith: self report stepNumber
		  with: self report numberOfSteps
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> updateAsEmptyReport [

	self previousStepButton enabled: false.
	self nextStepButton enabled: false.
	self astNodeWidget enabled: false.
	self astNodeWidget changeLabel: 'AST Node'.
	self astNodeWidget code text: ''.
	self preconditionWidget enabled: false.
	self preconditionWidget code text: ''.
	self postconditionWidget enabled: false.
	self postconditionWidget code text: ''
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> updateAsStepReport [
	"Top bar"

	self previousStepStatus image:
		(self statusIconFor: self report previousStepReport).
	self previousStepButton enabled: self report hasPreviousStepReport.
	self nextStepStatus image:
		(self statusIconFor: self report nextStepReport).
	self nextStepButton enabled: self report hasNextStepReport.

	"ast node"
	self astNodeWidget enabled: true.
	self astNodeWidget changeLabel: ('<1p> >> <2p>'
			 expandMacrosWith: self report step node methodNode compiledMethod methodClass
			 with: self report step node methodNode compiledMethod selector).
	self updateWidget: self astNodeWidget withNode: self report step node.

	"precondition"
	self report hasPrecondition ifTrue: [
		self preconditionWidget enabled: true.
		self
			updateWidget: self preconditionWidget
			withNode: self report step precondition sourceNode ].
	"postcondition"
	self report hasPostcondition ifTrue: [
		self postconditionWidget enabled: true.
		self
			updateWidget: self postconditionWidget
			withNode: self report step postcondition sourceNode ]
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> updateAsVerificationReport [
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> updateCode: aCodePresenter withNode: aNode [

	| interval |
	aNode source ifNil: [
		"If this execute something happen probably arround the metalinks of the breakpoints.
		Put a breakpoint here and inspect the 'aNode'.
		If the AST make no sense, i have no idea what to do."
		aCodePresenter text: '"something whent really wrong here ..."
"browse next line for more informations."
ExReqUIStepReportPresenter >> #updateCode:withNode:
'.
		^ self ].

	interval := (aNode source first:
		             aNode sourceInterval first + aNode sourceInterval last
		             // 2) lines size / aNode source lines size.
	aCodePresenter
		beForMethod: aNode methodNode;
		text: (aNode source ifNil: [ aNode formattedCode ]);
		addTextSegmentDecoration: (SpTextPresenterDecorator forHighlight
				 interval:
					 (aNode sourceInterval first to: aNode sourceInterval last + 1);
				 yourself);
		scrollValue: 0 @ interval
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> updatePresenter [

	super updatePresenter.
	self updateAsEmptyReport. 
	self report ifNil: [ ^ self ].
	self report isVerificationReport ifTrue: [
		self updateAsVerificationReport.
		^ self ].
	self updateAsStepReport
]

{ #category : 'accessing' }
ExReqUIStepReportPresenter >> updateWidget: aWidget withNode: aNode [

	self updateCode: aWidget code withNode: aNode.
	aWidget action: [ aNode methodNode compiledMethod browse ]
]
