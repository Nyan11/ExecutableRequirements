Extension { #name : 'ExReqRepository' }

{ #category : '*ExecutableRequirements-Roassal' }
ExReqRepository >> inspectionRepository [

	<inspectorPresentationOrder: 1 title: 'Roassal View'>
	^ SpRoassalInspectorPresenter new
		canvas: (ExReqRoassalViews repositoryView: self);
		yourself
]
