Class {
	#name : 'ExReqStepReportIsValidEvent',
	#superclass : 'Announcement',
	#instVars : [
		'stepReport'
	],
	#category : 'ExecutableRequirements-Events',
	#package : 'ExecutableRequirements',
	#tag : 'Events'
}

{ #category : 'accessing' }
ExReqStepReportIsValidEvent >> stepReport [

	^ stepReport
]

{ #category : 'accessing' }
ExReqStepReportIsValidEvent >> stepReport: anObject [

	stepReport := anObject
]
