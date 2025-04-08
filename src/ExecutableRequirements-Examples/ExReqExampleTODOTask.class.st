Class {
	#name : 'ExReqExampleTODOTask',
	#superclass : 'Object',
	#instVars : [
		'text',
		'state'
	],
	#category : 'ExecutableRequirements-Examples-Example-TODO',
	#package : 'ExecutableRequirements-Examples',
	#tag : 'Example-TODO'
}

{ #category : 'as yet unclassified' }
ExReqExampleTODOTask >> actionAddTask [
]

{ #category : 'testing' }
ExReqExampleTODOTask >> initialize [

	super initialize.
	self isTodo
]

{ #category : 'testing' }
ExReqExampleTODOTask >> isDone [

	state := #DONE
]

{ #category : 'testing' }
ExReqExampleTODOTask >> isTodo [

	state := #TODO
]

{ #category : 'accessing' }
ExReqExampleTODOTask >> state [

	^ state
]

{ #category : 'accessing' }
ExReqExampleTODOTask >> text [

	^ text
]

{ #category : 'accessing' }
ExReqExampleTODOTask >> text: anObject [

	text := anObject
]
