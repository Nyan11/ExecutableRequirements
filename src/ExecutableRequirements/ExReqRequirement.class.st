Class {
	#name : 'ExReqRequirement',
	#superclass : 'Object',
	#instVars : [
		'sourceDocument',
		'repository',
		'title',
		'verifications',
		'description'
	],
	#category : 'ExecutableRequirements-Model-Static',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Static'
}

{ #category : 'instance creation' }
ExReqRequirement class >> new [

	| requirement method source |
	requirement := self basicNew initialize.
	method := thisContext sender homeMethod.
	source := ExReqEmptySourceDocument new.
	method isDoIt
		ifFalse: [
		source method: (method methodClass methodNamed: method selector) ]
		ifTrue: [ source method: #doIt ].
	requirement sourceDocument: source.
	^ requirement
]

{ #category : 'adding' }
ExReqRequirement >> addVerification: aFullBlockClosure [ 
	| verification |
	verification := ExReqVerification new.
	aFullBlockClosure value: verification.
	self verifications add: verification
]

{ #category : 'converting' }
ExReqRequirement >> asReport [

	^ ExReqRequirementReport new
		  requirement: self;
		  yourself
]

{ #category : 'accessing' }
ExReqRequirement >> description [
	^ description
]

{ #category : 'accessing' }
ExReqRequirement >> description: aString [ 
	description := aString 
]

{ #category : 'initialization' }
ExReqRequirement >> initialize [

	super initialize.
	verifications := OrderedCollection new
]

{ #category : 'testing' }
ExReqRequirement >> isSimilarTo: anExReqRequirement [ 

	^ self sourceDocument equalsSource: anExReqRequirement sourceDocument.
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
ExReqRequirement >> title [
	^ title
]

{ #category : 'accessing' }
ExReqRequirement >> title: aString [ 
	title := aString
]

{ #category : 'accessing' }
ExReqRequirement >> verifications [
	^ verifications
]
