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
ExReqSafePassingControlTest >> req1 [

	<ExReqSafePassingControl>
	^ ExReqRequirement new
		  title:
			  'A requirement verifications shall handle meta-safe recursion';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  (ExReqMockTestObject methodNamed:
							   #methodToTestMetaSafeRecursion) ast
				  withPrecondition: [
					  ExReqMockTestObject new methodToTestMetaSafeRecursion ]
				  withPostcondition: [
					  ExReqMockTestObject new methodToTestMetaSafeRecursion ] ];
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqSafePassingControlTest >> req2 [

	<ExReqSafePassingControl>
	^ ExReqRequirement new
		  title:
			  'A requirement verifications shall manage evaluation in a NON thread-specific maner.';
		  addVerification: [ :verify |
			  verify addStepOnAST:
					  (ExReqMockTestObject methodNamed: #methodToTestThread) ast ];
		  yourself
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

{ #category : 'as yet unclassified' }
ExReqSafePassingControlTest >> req4 [

	<ExReqSafePassingControl>
	^ ExReqRequirement new
		  title: 'A requirement verifications shall handle exception';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockTestObject methodNamed:
							    #methodToTestTheExceptionExit) ast allChildren select: [
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
ExReqSafePassingControlTest >> testExceptionExit [

	| requirement requirementReport |
	self report installTracingPoints.
	self should: [ExReqMockTestObject new methodToTestTheExceptionExit] raise: Exception.
	requirement := self req4.
	requirementReport := self report findRequirementReport: requirement.
	self assert: requirementReport isValid.
	self report removeTracingPoints
]

{ #category : 'tests' }
ExReqSafePassingControlTest >> testMetaSafeRecursion [

	| requirement requirementReport |
	self report installTracingPoints.
	ExReqMockTestObject new methodToTestMetaSafeRecursion.
	requirement := self req1.
	requirementReport := self report findRequirementReport: requirement.
	self assert: requirementReport isValid.
	self report removeTracingPoints
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

{ #category : 'tests' }
ExReqSafePassingControlTest >> testThread [

	| block return checkAssert requirement requirementReport |
	checkAssert := Semaphore new.
	self report installTracingPoints.
	requirement := self req2.
	requirementReport := self report findRequirementReport: requirement.
	
	block := [
	         ExReqMockTestObject new methodToTestThread.
	         checkAssert signal ].
	return := block fork.

	"Returns immediately, forked block not yet run"
	self deny: requirementReport isValid.

	"Forked process has been scheduled"
	checkAssert wait.
	self assert: requirementReport isValid.

	self report removeTracingPoints
]
