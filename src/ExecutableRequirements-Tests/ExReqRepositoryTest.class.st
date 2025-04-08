Class {
	#name : 'ExReqRepositoryTest',
	#superclass : 'TestCase',
	#instVars : [
		'repository'
	],
	#category : 'ExecutableRequirements-Tests-Meta-Requirements-Tests',
	#package : 'ExecutableRequirements-Tests',
	#tag : 'Meta-Requirements-Tests'
}

{ #category : 'running' }
ExReqRepositoryTest >> repository [

	^ repository
]

{ #category : 'running' }
ExReqRepositoryTest >> setUp [
	super setUp.

	repository := ExReqRepository new pragmaSelector: #ExReqTest; yourself
]

{ #category : 'as yet unclassified' }
ExReqRepositoryTest >> testRequirementsAreTraceable [

	| documents mockDocuments pharoImageDocument |
	documents := self repository requirements collect: #sourceDocument.
	pharoImageDocument := documents select: [ :each |
		                      each isPharoImageDocument ].
	mockDocuments := documents select: [ :each | each isMockDocument ].

	self assert: pharoImageDocument size equals: ExReqMockRequirements methods size - 1.
	self
		assertCollection: (pharoImageDocument collect: #method)
		includesAll: (ExReqMockRequirements methods reject: [ :each |
				 each selector = #testReq3 ]).

	self assert: mockDocuments size equals: 1.
	self assert: mockDocuments first requirementId equals: #testReq3
]

{ #category : 'as yet unclassified' }
ExReqRepositoryTest >> testRequirementsAreUnique [

	|expectedRequirementsNumber |
	expectedRequirementsNumber := (Pragma allNamed: #ExReqTest) size.
	self deny: expectedRequirementsNumber equals: 0. 
	self assert: self repository requirements size equals: expectedRequirementsNumber.
	self assert: self repository requirements asSet size equals: expectedRequirementsNumber
]

{ #category : 'as yet unclassified' }
ExReqRepositoryTest >> testRequirementsRepository [

	self assert: (self repository requirements allSatisfy: [ :each | each repository = self repository ])
]
