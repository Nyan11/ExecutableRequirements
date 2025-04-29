Class {
	#name : 'ExReqMockTestObject',
	#superclass : 'Object',
	#instVars : [
		'x'
	],
	#category : 'ExecutableRequirements-Tests-Safe-Passing-Control',
	#package : 'ExecutableRequirements-Tests',
	#tag : 'Safe-Passing-Control'
}

{ #category : 'as yet unclassified' }
ExReqMockTestObject >> methodToTestTheNonLocalReturn [

	x := [ true ifTrue: [ ^ Color red ] ] value.
	^ Color blue
]
