Extension { #name : 'ExReqRepository' }

{ #category : '*ExecutableRequirements-Impacts' }
ExReqRepository >> allImpacts [

	| impacts |
	impacts := self requirements copy collect: [ :each |
		           ExReqRequirementImpact new
			           requirement: each;
			           yourself ].
	impacts withIndexDo: [ :impact :index |
		impact impactForCollection: (impacts allButFirst: index) ].
	^ impacts
]
