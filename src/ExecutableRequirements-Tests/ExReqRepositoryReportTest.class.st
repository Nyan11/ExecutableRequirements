Class {
	#name : 'ExReqRepositoryReportTest',
	#superclass : 'TestCase',
	#instVars : [
		'repository',
		'report'
	],
	#category : 'ExecutableRequirements-Tests-Meta-Requirements-Tests',
	#package : 'ExecutableRequirements-Tests',
	#tag : 'Meta-Requirements-Tests'
}

{ #category : 'running' }
ExReqRepositoryReportTest >> report [

	^ report
]

{ #category : 'running' }
ExReqRepositoryReportTest >> repository [

	^ repository
]

{ #category : 'running' }
ExReqRepositoryReportTest >> setUp [

	super setUp.

	repository := ExReqRepository new
		              pragmaSelector: #ExReqTest;
		              yourself.
	report := repository asReport.
]

{ #category : 'running' }
ExReqRepositoryReportTest >> tearDown [

	super tearDown.
	self report removeTracingPoints
]

{ #category : 'tests' }
ExReqRepositoryReportTest >> testCreateTracingPoints [

	self assert: ExReqTracingPoint all isEmpty.
	self assert: self report tracingPoints isEmpty.
	self report createTracingPoints.
	self assert: ExReqTracingPoint all isNotEmpty.
	self assert: self report tracingPoints isNotEmpty
]

{ #category : 'tests' }
ExReqRepositoryReportTest >> testExecuteTracingPoints [

	| requirement requirementReport |
	self report installTracingPoints.
	requirement := ExReqMockRequirements new testReq7.
	requirementReport := self report findRequirementReport: requirement.
	self assert: requirementReport isValid.
	self report removeTracingPoints
]

{ #category : 'tests' }
ExReqRepositoryReportTest >> testInstallTracingPoints [

	self assert: ExReqTracingPoint all isEmpty.
	self assert: self report tracingPoints isEmpty.
	self report installTracingPoints.
	
	self assert: ExReqTracingPoint all isNotEmpty.
	self assert: self report tracingPoints isNotEmpty.
	self report removeTracingPoints.
	self assert: ExReqTracingPoint all isEmpty.
	self assert: self report tracingPoints isEmpty.
]

{ #category : 'tests' }
ExReqRepositoryReportTest >> testRepositoryEquivalentReport [

	self
		assert: self repository requirements size
		equals: self report requirementReports size.
	self repository requirements withIndexDo: [ :req :indexReq |
		| repReq |
		repReq := self report requirementReports at: indexReq.
		self assert: req equals: repReq requirement.
		self
			assert: req verifications size
			equals: repReq verificationReports size.
		req verifications withIndexDo: [ :ver :indexVer |
			| repVer |
			repVer := repReq verificationReports at: indexVer.
			self assert: ver equals: repVer verification.
			self assert: ver steps size equals: repVer stepReports size.
			ver steps withIndexDo: [ :ste :indexSte |
				| repSte |
				repSte := repVer stepReports at: indexSte.
				self assert: ste equals: repSte step ] ] ]
]
