Class {
	#name : 'ExReqExampleTODORequirements',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Examples-Example-TODO',
	#package : 'ExecutableRequirements-Examples',
	#tag : 'Example-TODO'
}

{ #category : 'as yet unclassified' }
ExReqExampleTODORequirements >> inspectRepositoryReport [

	<script: 'ExReqExampleTODORequirements new inspectRepositoryReport'>
	| repository |
	repository := ExReqRepository new
		              pragmaSelector: #ExReqTODO;
		              yourself.
	repository asReport inspect
]

{ #category : 'tests' }
ExReqExampleTODORequirements >> todoReq1 [

	<ExReqTODO>
	^ ExReqRequirement new
		  title: 'Task model';
		  description: 'A task is composed of:
- a text (String)
- a state (Enum: TODO, DONE)';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST: (ExReqExampleTODOTask >> #text:) ast
				  withPrecondition: [ :obj :arguments | arguments first isString ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST: (ExReqExampleTODOTask >> #state) ast
				  withPrecondition: [ :obj | obj state = #DONE ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST: (ExReqExampleTODOTask >> #state) ast
				  withPrecondition: [ :obj | obj state = #TODO ] ];
		  yourself
]

{ #category : 'tests' }
ExReqExampleTODORequirements >> todoReq2 [

	<ExReqTODO>
	^ ExReqRequirement new
		  title: 'Task creation';
		  description:
			  'A user can create a Task, for this, it provide a text. By default the task has a state TODO.';
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  (ExReqExampleTODOApplication >> #actionAddTask) ast
				  withPrecondition: [ :obj | obj tasks size = 0 ]
				  withPostcondition: [ :obj | obj tasks size = 1 ] ];
		  addVerification: [ :verify |
			  verify
				  addStepOnAST:
					  (ExReqExampleTODOApplication >> #actionAddTask) ast
				  withPostcondition: [ :obj | obj tasks first state = #TODO ] ];
		  yourself
]

{ #category : 'tests' }
ExReqExampleTODORequirements >> todoReq3 [

	<ExReqTODO>
	^ ExReqRequirement new
		  title: 'Tasks list';
		  description: 'The application display all tasks and their states.';
		  addVerification: [ :verify |
			  verify addStepOnAST:
					  (ExReqExampleTODOApplication >> #initializePresenter) ast ];
		  yourself
]

{ #category : 'tests' }
ExReqExampleTODORequirements >> todoReq4 [

	<ExReqTODO>
	^ ExReqRequirement new
		  title: 'Change task state';
		  description:
			  'A user can change the state of task from TODO to DONE and form DONE to TODO in case of mistake.';
		  addVerification: [ :verify |
			  verify addStepOnAST:
					  (ExReqExampleTODOApplication >> #actionChangeState) ast withPrecondition: [ :obj | obj selectedTask state = #TODO ] withPostcondition: [ :obj | obj selectedTask state = #DONE ] ];
				addVerification: [ :verify |
			  verify addStepOnAST:
					  (ExReqExampleTODOApplication >> #actionChangeState) ast withPrecondition: [ :obj | obj selectedTask state = #DONE ] withPostcondition: [ :obj | obj selectedTask state = #TODO ] ];
		  yourself
]
