Class {
	#name : 'ExReqAbstractSourceDocument',
	#superclass : 'Object',
	#instVars : [
		'method'
	],
	#category : 'ExecutableRequirements-Documents',
	#package : 'ExecutableRequirements',
	#tag : 'Documents'
}

{ #category : 'as yet unclassified' }
ExReqAbstractSourceDocument >> equalsSource: anExReqSourceDocument [
	self method == anExReqSourceDocument method
		ifTrue: [ ^ true ].
	self method class = anExReqSourceDocument method class
		ifFalse: [ ^ false ].
	self method size = anExReqSourceDocument method size
		ifFalse: [ ^ false ].
	self method header = anExReqSourceDocument method header
		ifFalse: [ ^ false ].
	self method initialPC to: self method endPC do: [ :i |
		(self method at: i) = (anExReqSourceDocument method at: i)
			ifFalse: [ ^ false ] ].
	^ true
]

{ #category : 'testing' }
ExReqAbstractSourceDocument >> isMockDocument [

	^ false
]

{ #category : 'testing' }
ExReqAbstractSourceDocument >> isPharoImageDocument [

	^ false
]

{ #category : 'accessing' }
ExReqAbstractSourceDocument >> method [

	^ method
]

{ #category : 'accessing' }
ExReqAbstractSourceDocument >> method: anObject [

	method := anObject
]
