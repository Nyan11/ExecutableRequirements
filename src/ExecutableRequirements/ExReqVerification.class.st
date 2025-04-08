Class {
	#name : 'ExReqVerification',
	#superclass : 'Object',
	#instVars : [
		'steps'
	],
	#category : 'ExecutableRequirements-Model-Static',
	#package : 'ExecutableRequirements',
	#tag : 'Model-Static'
}

{ #category : 'adding' }
ExReqVerification >> addStepOnAST: aRBNode [

	self addStepOnAST: aRBNode withPrecondition: nil withPostcondition: nil
]

{ #category : 'adding' }
ExReqVerification >> addStepOnAST: aRBNode withPostcondition: aPostconditionBlock [

	self addStepOnAST: aRBNode withPrecondition: nil withPostcondition: aPostconditionBlock
]

{ #category : 'adding' }
ExReqVerification >> addStepOnAST: aRBNode withPrecondition: aPreconditionBlock [

	self addStepOnAST: aRBNode withPrecondition: aPreconditionBlock withPostcondition: nil
]

{ #category : 'adding' }
ExReqVerification >> addStepOnAST: aRBNode withPrecondition: aPreconditionBlock withPostcondition: aPostconditionBlock [

	| step |
	step := ExReqStep new
		        node: aRBNode;
		        precondition: aPreconditionBlock;
		        postcondition: aPostconditionBlock;
		        yourself.
	self steps add: step
]

{ #category : 'converting' }
ExReqVerification >> asReport [

	^ ExReqVerificationReport new
		  verification: self;
		  yourself
]

{ #category : 'initialization' }
ExReqVerification >> initialize [

	super initialize.
	steps := OrderedCollection new.
]

{ #category : 'accessing' }
ExReqVerification >> steps [
	^ steps
]
