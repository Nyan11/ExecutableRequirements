Class {
	#name : 'ExReqRepository',
	#superclass : 'Object',
	#instVars : [
		'requirements',
		'pragmaSelector'
	],
	#category : 'ExecutableRequirements-Model-Static',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Static'
}

{ #category : 'converting' }
ExReqRepository >> asReport [

	^ ExReqRepositoryReport new repository: self; yourself
]

{ #category : 'as yet unclassified' }
ExReqRepository >> associatedClasses [

	^ (self requirements flatCollect: [ :each | each associatedClasses ])
		  asSet
]

{ #category : 'as yet unclassified' }
ExReqRepository >> associatedMethods [

	^ (self requirements flatCollect: [ :each | each associatedMethods ])
		  asSet
]

{ #category : 'as yet unclassified' }
ExReqRepository >> associatedNodes [

	^ (self requirements flatCollect: [ :each | each associatedNodes ])
		  asSet
]

{ #category : 'as yet unclassified' }
ExReqRepository >> associatedPackages [

	^ (self requirements flatCollect: [ :each | each associatedPackages ])
		  asSet
]

{ #category : 'accessing' }
ExReqRepository >> pragmaSelector [

	^ pragmaSelector
]

{ #category : 'accessing' }
ExReqRepository >> pragmaSelector: anObject [

	pragmaSelector := anObject.
	self updateRequirements
]

{ #category : 'accessing' }
ExReqRepository >> requirements [

	^ requirements
]

{ #category : 'initialization' }
ExReqRepository >> updateRequirements [

	| pragmas |
	pragmas := Pragma allNamed: self pragmaSelector.
	requirements := pragmas collect: [ :p |
		                | requirement |
		                requirement := p method valueWithReceiver:
			                               p methodClass instanceSide new.
		                requirement repository: self.
		                requirement ]
]
