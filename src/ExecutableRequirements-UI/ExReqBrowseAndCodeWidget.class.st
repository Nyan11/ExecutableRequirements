Class {
	#name : 'ExReqBrowseAndCodeWidget',
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
ExReqBrowseAndCodeWidget >> action [

	^ action
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> action: aBlock [

	action := aBlock
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> button [

	^ button
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> changeIcon: anIcon [

	self button icon: anIcon
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> changeLabel: aString [

	self label label: aString.
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> code [

	^ code
]

{ #category : 'layout' }
ExReqBrowseAndCodeWidget >> defaultLayout [

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
ExReqBrowseAndCodeWidget >> initializePresenter [

	action := [  ].
	code := SpCodePresenter new editable: false; yourself.
	button := SpButtonPresenter new icon: (Smalltalk ui icons iconNamed: #nautilus); action: [ self action value ]; yourself.
	label := SpLabelPresenter new displayBold: [ :t | true ]; label: 'Change me ...'; yourself
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> label [

	^ label
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> model [

	^ model
]

{ #category : 'accessing' }
ExReqBrowseAndCodeWidget >> model: anObject [

	model := anObject
]
