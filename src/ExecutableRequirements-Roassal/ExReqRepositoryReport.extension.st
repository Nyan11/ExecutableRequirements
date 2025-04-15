Extension { #name : 'ExReqRepositoryReport' }

{ #category : '*ExecutableRequirements-Roassal' }
ExReqRepositoryReport >> inspectionRepositoryReport [

	<inspectorPresentationOrder: 1 title: 'Roassal View'>
	^ SpRoassalInspectorPresenter new
		canvas: (ExReqRoassalViews repositoryReportView: self);
		yourself
]
