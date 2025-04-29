Class {
	#name : 'ExReqMockRequirements',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Tests-Meta-Requirements-Tests',
	#package : 'ExecutableRequirements-Tests',
	#tag : 'Meta-Requirements-Tests'
}

{ #category : 'initialization' }
ExReqMockRequirements >> resetMethod [

	<script: 'ExReqMockRequirements new resetMethod'>
	| class methods |
	ExReqTracingPoint all do: #remove.
	class := ExReqMockRequirements.
	methods := class methods collect: [ :each | each sourceCode ].
	class methods do: [ :each | class removeSelector: each ].
	methods do: [ :each | class compile: each ]
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq1 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement is unique';
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq2 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement belong to only one repository';
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq3 [

	<ExReqTest>
	^ ExReqRequirement new
		  title:
			  'A requirement can be traced to a document that contain the specification';
		  sourceDocument: (ExReqMockDocument new requirementId: #testReq3);
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq4 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement can be verified';
		  addVerification: [ :verify |
			  verify addStepOnAST:
					  (((ExReqMockRequirements methodNamed: #testReq4) ast
						    allChildren select: [ :each | each isSequence ]) at: 2) ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  (((ExReqMockRequirements methodNamed: #testReq4) ast
						    allChildren select: [ :each | each isSequence ]) at: 4)
				  withPrecondition: [ :obj :arguments :requirement |
					  obj = requirement ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  (((ExReqMockRequirements methodNamed: #testReq4) ast
						    allChildren select: [ :each | each isSequence ]) at: 7)
				  withPostcondition: [ :obj :arguments :requirement |
					  obj = requirement ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  (((ExReqMockRequirements methodNamed: #testReq4) ast
						    allChildren select: [ :each | each isSequence ]) at: 10)
				  withPrecondition: [ :obj :arguments :requirement |
					  obj = requirement ]
				  withPostcondition: [ :obj :arguments :requirement |
					  obj = requirement ] ];
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq5 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement can have a title';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST: (ExReqMockRequirements methodNamed: #testReq5) ast
				  withPostcondition: [ :obj :arguments :requirement |
					  requirement title = 'A requirement can have a title' and: [
							  obj title = 'A requirement can have a title' ] ] ];
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq6 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement can have a description';
		  description: 'The description';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq6) ast allChildren
						   select: [ :each | each isLiteralNode ]) second parent
				  withPostcondition: [ :obj :arguments :requirement |
					  requirement description = 'The description' and: [
							  obj description = 'The description' ] ] ];
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq7 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement verifications can target the same AST node';
		  description: 'The description';
		  addVerification: [ :verify |
			  verify addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq1) ast allChildren
						   select: [ :each | each isSequence ]) first ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq1) ast allChildren
						   select: [ :each | each isSequence ]) first
				  withPrecondition: [ :obj :arguments :requirement | true ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					 ((ExReqMockRequirements methodNamed: #testReq1) ast allChildren
						   select: [ :each | each isSequence ]) first
				  withPrecondition: [ :obj :arguments :requirement | true ]
				  withPostcondition: [ :obj :arguments :requirement | true ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq1) ast allChildren
						   select: [ :each | each isSequence ]) first
				  withPostcondition: [ :obj :arguments :requirement | true ] ];
		  yourself
]

{ #category : 'tests' }
ExReqMockRequirements >> testReq8 [

	<ExReqTest>
	^ ExReqRequirement new
		  title: 'A requirement verifications can have multiple steps';
		  addVerification: [ :verify |
			  verify addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq8) ast allChildren
						   select: [ :each | each isSequence ]) second.
			  verify addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq8) ast allChildren
						   select: [ :each | each isSequence ]) second.
			  verify addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq8) ast allChildren
						   select: [ :each | each isSequence ]) second.
			  verify addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq8) ast allChildren
						   select: [ :each | each isSequence ]) second ];
		  yourself
]
