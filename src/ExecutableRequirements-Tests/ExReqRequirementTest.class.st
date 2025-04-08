Class {
	#name : 'ExReqRequirementTest',
	#superclass : 'TestCase',
	#category : 'ExecutableRequirements-Tests-Meta-Requirements-Tests',
	#package : 'ExecutableRequirements-Tests',
	#tag : 'Meta-Requirements-Tests'
}

{ #category : 'tests' }
ExReqRequirementTest >> testDescription [

	self
		assert: ExReqMockRequirements new testReq6 description
		equals: 'The description'
]

{ #category : 'tests' }
ExReqRequirementTest >> testTitle [

	self assert: ExReqMockRequirements new testReq5 title equals: 'A requirement can have a title'
]
