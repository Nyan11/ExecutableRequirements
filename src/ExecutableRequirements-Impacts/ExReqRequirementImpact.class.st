Class {
	#name : 'ExReqRequirementImpact',
	#superclass : 'Object',
	#instVars : [
		'requirement',
		'sameNode',
		'sameMethod',
		'sameClass',
		'samePackage'
	],
	#category : 'ExecutableRequirements-Impacts',
	#package : 'ExecutableRequirements-Impacts'
}

{ #category : 'as yet unclassified' }
ExReqRequirementImpact >> impactFor: aRequirement [

	self requirement = aRequirement requirement ifTrue: [ ^ self ].
	(self requirement associatedPackages includesAny:
		 aRequirement requirement associatedPackages) ifTrue: [
		self samePackage add: aRequirement.
		aRequirement samePackage add: self ].
	(self requirement associatedClasses includesAny:
		 aRequirement requirement associatedClasses) ifTrue: [
		self sameClass add: aRequirement.
		aRequirement sameClass add: self ].
	(self requirement associatedMethods includesAny:
		 aRequirement requirement associatedMethods) ifTrue: [
		self sameMethod add: aRequirement.
		aRequirement sameMethod add: self ].
	(self requirement associatedNodes includesAny:
		 aRequirement requirement associatedNodes) ifTrue: [
		self sameNode add: aRequirement.
		aRequirement sameNode add: self ]
]

{ #category : 'as yet unclassified' }
ExReqRequirementImpact >> impactForCollection: aCollection [

	aCollection do: [ :reqToTest | self impactFor: reqToTest ]
]

{ #category : 'initialization' }
ExReqRequirementImpact >> initialize [

	super initialize.
	samePackage := OrderedCollection new.
	sameClass := OrderedCollection new.
	sameMethod := OrderedCollection new.
	sameNode := OrderedCollection new
	
]

{ #category : 'accessing' }
ExReqRequirementImpact >> requirement [

	^ requirement
]

{ #category : 'accessing' }
ExReqRequirementImpact >> requirement: anObject [

	requirement := anObject.

]

{ #category : 'accessing' }
ExReqRequirementImpact >> sameClass [

	^ sameClass
]

{ #category : 'accessing' }
ExReqRequirementImpact >> sameMethod [

	^ sameMethod
]

{ #category : 'accessing' }
ExReqRequirementImpact >> sameNode [

	^ sameNode
]

{ #category : 'accessing' }
ExReqRequirementImpact >> samePackage [

	^ samePackage
]
