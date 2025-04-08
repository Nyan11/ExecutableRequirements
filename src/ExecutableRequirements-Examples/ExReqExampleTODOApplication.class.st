Class {
	#name : 'ExReqExampleTODOApplication',
	#superclass : 'SpPresenter',
	#instVars : [
		'tasks',
		'listPresenter',
		'addButton',
		'stateButton'
	],
	#category : 'ExecutableRequirements-Examples-Example-TODO',
	#package : 'ExecutableRequirements-Examples',
	#tag : 'Example-TODO'
}

{ #category : 'as yet unclassified' }
ExReqExampleTODOApplication >> actionAddTask [

	| dialog |
	dialog := SpRequestDialog new.
	dialog
		title: 'Create new task';
		label: 'Enter the text here:';
		text: '';
		acceptLabel: 'OK';
		cancelLabel: 'Cancel';
		onAccept: [
			| task |
			task := ExReqExampleTODOTask new
				        text: dialog text;
				        yourself.
			tasks add: task.
			listPresenter items: tasks.
			listPresenter selectItem: task ];
		onCancel: [  ].
	dialog openModal
]

{ #category : 'as yet unclassified' }
ExReqExampleTODOApplication >> actionChangeState [

	| selected |
	selected := self selectedTask.
	listPresenter selectedItem state = #TODO
		ifTrue: [ selected isDone ]
		ifFalse: [ selected isTodo ].
	listPresenter updateList.
	listPresenter selectItem: selected
]

{ #category : 'initialization - deprecated' }
ExReqExampleTODOApplication >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: addButton expand: false;
		  add: listPresenter;
		  add: stateButton expand: false;
		  yourself
]

{ #category : 'initialization - deprecated' }
ExReqExampleTODOApplication >> initializePresenter [

	tasks := OrderedCollection new.
	addButton := SpButtonPresenter new
		             label: 'Add new task';
		             action: [ self actionAddTask ];
		             yourself.
	stateButton := SpButtonPresenter new
		               label: 'Change state of selected task';
		               enabled: false;
		               action: [ self actionChangeState ];
		               yourself.
	listPresenter := SpListPresenter new
		                 whenSelectionChangedDo: [ :sel |
			                 stateButton enabled: sel isNotNil ];
		                 display: [ :task | task text ];
		                 displayIcon: [ :task |
			                 task state = #DONE
				                 ifTrue: [
					                 Smalltalk ui icons iconNamed: #checkboxSelected ]
				                 ifFalse: [
					                 Smalltalk ui icons iconNamed:
							                 #checkboxUnselected ] ];
		                 yourself
]

{ #category : 'as yet unclassified' }
ExReqExampleTODOApplication >> selectedTask [

	^ listPresenter selectedItem
]
