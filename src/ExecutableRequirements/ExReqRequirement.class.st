Class {
	#name : 'ExReqRequirement',
	#superclass : 'Object',
	#instVars : [
		'sourceDocument',
		'repository',
		'title',
		'verifications'
	],
	#category : 'ExecutableRequirements-Model',
	#package : 'ExecutableRequirements',
	#tag : 'Model'
}

{ #category : 'adding' }
ExReqRequirement >> addVerification: aFullBlockClosure [ 
	| verification |
	verification := ExReqVerification new.
	aFullBlockClosure value: verification.
	self verifications add: verification
]

{ #category : 'initialization' }
ExReqRequirement >> initialize [

	super initialize.
	verifications := OrderedCollection new
]

{ #category : 'accessing' }
ExReqRequirement >> repository [
	^ repository
]

{ #category : 'accessing' }
ExReqRequirement >> repository: anExReqRepository [

	repository := anExReqRepository 
]

{ #category : 'accessing' }
ExReqRequirement >> sourceDocument [

	^ sourceDocument
]

{ #category : 'accessing' }
ExReqRequirement >> sourceDocument: anObject [

	sourceDocument := anObject
]

{ #category : 'accessing' }
ExReqRequirement >> title: aString [ 
	title := aString
]

{ #category : 'accessing' }
ExReqRequirement >> verifications [
	^ verifications
]
