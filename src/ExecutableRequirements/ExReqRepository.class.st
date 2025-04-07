Class {
	#name : 'ExReqRepository',
	#superclass : 'Object',
	#instVars : [
		'requirements',
		'pragmaSelector'
	],
	#category : 'ExecutableRequirements-Model',
	#package : 'ExecutableRequirements',
	#tag : 'Model'
}

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
			                               p methodClass instanceSide basicNew.
		                requirement repository: self.
		                requirement sourceDocument ifNil: [
			                requirement sourceDocument:
				                (ExReqPharoImageSourceDocument new
					                 method: p method;
					                 yourself) ].
		                requirement ]
]
