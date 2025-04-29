Class {
	#name : 'ExReqSafePassingControlTest',
	#superclass : 'TestCase',
	#instVars : [
		'repository',
		'report'
	],
	#category : 'ExecutableRequirements-Tests-Safe-Passing-Control',
	#package : 'ExecutableRequirements-Tests',
	#tag : 'Safe-Passing-Control'
}

{ #category : 'accessing' }
ExReqSafePassingControlTest >> report [

	^ report
]

{ #category : 'as yet unclassified' }
ExReqSafePassingControlTest >> req3 [

	<ExReqSafePassingControl>
	^ ExReqRequirement new
		  title: 'A requirement verifications shall handle non local return';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockTestObject methodNamed:
							    #methodToTestTheNonLocalReturn) ast allChildren select: [
							   :each | each isMessage ]) first
				  withPrecondition: [ true ]
				  withPostcondition: [ true ] ];
		  yourself
]

{ #category : 'running' }
ExReqSafePassingControlTest >> setUp [

	super setUp.

	repository := ExReqRepository new
		              pragmaSelector: #ExReqSafePassingControl;
		              yourself.
	report := repository asReport
]

{ #category : 'running' }
ExReqSafePassingControlTest >> tearDown [

	super tearDown.
	self report removeTracingPoints.
	self report closeReport.
	repository := nil
]

{ #category : 'tests' }
ExReqSafePassingControlTest >> testNonLocalReturn [

	| requirement requirementReport |
	self report installTracingPoints.
	ExReqMockTestObject new methodToTestTheNonLocalReturn.
	requirement := self req3.
	requirementReport := self report findRequirementReport: requirement.
	self assert: requirementReport isValid.
	self report removeTracingPoints
]
