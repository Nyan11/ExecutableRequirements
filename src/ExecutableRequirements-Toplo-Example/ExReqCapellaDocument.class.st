Class {
	#name : 'ExReqCapellaDocument',
	#superclass : 'ExReqAbstractSourceDocument',
	#instVars : [
		'name',
		'id'
	],
	#category : 'ExecutableRequirements-Toplo-Example-Requirements',
	#package : 'ExecutableRequirements-Toplo-Example',
	#tag : 'Requirements'
}

{ #category : 'accessing' }
ExReqCapellaDocument >> id [

	^ id
]

{ #category : 'accessing' }
ExReqCapellaDocument >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
ExReqCapellaDocument >> name [

	^ name
]

{ #category : 'accessing' }
ExReqCapellaDocument >> name: anObject [

	name := anObject
]

{ #category : 'as yet unclassified' }
ExReqCapellaDocument >> stashAccessors [

	<stashAccessors>
	^ { #id . #name }
]
