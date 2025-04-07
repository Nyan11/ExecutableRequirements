Class {
	#name : 'ExReqMockDocument',
	#superclass : 'ExReqAbstractSourceDocument',
	#instVars : [
		'requirementId'
	],
	#category : 'ExecutableRequirements-Documents',
	#package : 'ExecutableRequirements',
	#tag : 'Documents'
}

{ #category : 'testing' }
ExReqMockDocument >> isMockDocument [

	^ true
]

{ #category : 'accessing' }
ExReqMockDocument >> requirementId [

	^ requirementId
]

{ #category : 'accessing' }
ExReqMockDocument >> requirementId: anObject [

	requirementId := anObject
]
