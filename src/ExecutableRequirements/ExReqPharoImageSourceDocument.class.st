Class {
	#name : 'ExReqPharoImageSourceDocument',
	#superclass : 'ExReqAbstractSourceDocument',
	#instVars : [
		'method'
	],
	#category : 'ExecutableRequirements-Documents',
	#package : 'ExecutableRequirements',
	#tag : 'Documents'
}

{ #category : 'testing' }
ExReqPharoImageSourceDocument >> isPharoImageDocument [

	^ true
]

{ #category : 'accessing' }
ExReqPharoImageSourceDocument >> method [

	^ method
]

{ #category : 'accessing' }
ExReqPharoImageSourceDocument >> method: anObject [

	method := anObject
]
