Class {
	#name : 'ExReqStep',
	#superclass : 'Object',
	#instVars : [
		'node',
		'precondition',
		'postcondition'
	],
	#category : 'ExecutableRequirements-Model-Static',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Static'
}

{ #category : 'converting' }
ExReqStep >> asReport [

	^ ExReqStepReport new
		  step: self;
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqStep >> associatedClass [

	^ self associatedMethod methodClass
]

{ #category : 'as yet unclassified' }
ExReqStep >> associatedMethod [

	^ self node methodNode compiledMethod
]

{ #category : 'as yet unclassified' }
ExReqStep >> associatedPackage [

	^ self associatedClass package
]

{ #category : 'testing' }
ExReqStep >> hasPostcondition [

	^ self postcondition isNotNil
]

{ #category : 'testing' }
ExReqStep >> hasPrecondition [

	^ self precondition isNotNil
]

{ #category : 'accessing' }
ExReqStep >> node [

	^ node
]

{ #category : 'accessing' }
ExReqStep >> node: aRBBlockNode [ 
	node := aRBBlockNode 
]

{ #category : 'accessing' }
ExReqStep >> postcondition [

	^ postcondition
]

{ #category : 'accessing' }
ExReqStep >> postcondition: anObject [

	postcondition := anObject
]

{ #category : 'accessing' }
ExReqStep >> precondition [

	^ precondition
]

{ #category : 'accessing' }
ExReqStep >> precondition: anObject [

	precondition := anObject
]
