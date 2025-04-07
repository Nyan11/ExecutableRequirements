Class {
	#name : 'ExReqMockRequirements',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Tests',
	#package : 'ExecutableRequirements-Tests'
}

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
			  'A requirement can be traced to a document that contain the specification, by default this Pharo image';
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
					  ((ExReqMockRequirements methodNamed: #testReq4) ast allChildren
						   select: [ :each | each isBlock ]) first ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq4) ast allChildren
						   select: [ :each | each isBlock ]) second
				  withPrecondition: [ :obj :arguments :requirement |
					  obj = requirement ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq4) ast allChildren
						   select: [ :each | each isBlock ]) third
				  withPostcondition: [ :obj :arguments :requirement |
					  obj = requirement ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  ((ExReqMockRequirements methodNamed: #testReq4) ast allChildren
						   select: [ :each | each isBlock ]) last
				  withPrecondition: [ :obj :arguments :requirement |
					  obj = requirement ]
				  withPostcondition: [ :obj :arguments :requirement |
					  obj = requirement ] ];
		  yourself
]
