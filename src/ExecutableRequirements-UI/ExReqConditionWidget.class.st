Class {
	#name : 'ExReqConditionWidget',
	#superclass : 'SpPresenter',
	#instVars : [
		'code',
		'button',
		'model',
		'label',
		'action'
	],
	#category : 'ExecutableRequirements-UI-Widgets',
	#package : 'ExecutableRequirements-UI',
	#tag : 'Widgets'
}

{ #category : 'accessing' }
ExReqConditionWidget >> action [

	^ action
]

{ #category : 'accessing' }
ExReqConditionWidget >> action: aBlock [

	action := aBlock
]

{ #category : 'accessing' }
ExReqConditionWidget >> button [

	^ button
]

{ #category : 'accessing' }
ExReqConditionWidget >> changeIcon: anIcon [

	self button icon: anIcon
]

{ #category : 'accessing' }
ExReqConditionWidget >> changeLabel: aString [

	self label label: aString.
]

{ #category : 'accessing' }
ExReqConditionWidget >> code [

	^ code
]

{ #category : 'layout' }
ExReqConditionWidget >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: self button withConstraints: [ :c |
					   c width: 24.
					   c height: 24 ];
				   add: self label;
				   yourself)
		  expand: false;
		  add: self code;
		  yourself
]

{ #category : 'initialization - deprecated' }
ExReqConditionWidget >> initializePresenter [

	action := [  ].
	code := SpCodePresenter new editable: false; yourself.
	button := SpButtonPresenter new icon: (Smalltalk ui icons iconNamed: #nautilus); action: [ self action value ]; yourself.
	label := SpLabelPresenter new displayBold: [ :t | true ]; label: 'Change me ...'; yourself
]

{ #category : 'accessing' }
ExReqConditionWidget >> label [

	^ label
]

{ #category : 'accessing' }
ExReqConditionWidget >> model [

	^ model
]

{ #category : 'accessing' }
ExReqConditionWidget >> model: anObject [

	model := anObject
]
