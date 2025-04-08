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
