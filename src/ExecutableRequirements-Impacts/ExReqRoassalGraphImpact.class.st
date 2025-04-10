Class {
	#name : 'ExReqRoassalGraphImpact',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Impacts',
	#package : 'ExecutableRequirements-Impacts'
}

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> example [

	| repositoryReport |
	repositoryReport := ExReqRepository new
		                    pragmaSelector: #ExReqTest;
		                    yourself.
	{
		  (ExReqRoassalGraphImpact requirementsViewForPackage:
			   repositoryReport allImpacts).
		  (ExReqRoassalGraphImpact requirementsViewForClass:
			   repositoryReport allImpacts).
		  (ExReqRoassalGraphImpact requirementsViewForMethod:
			   repositoryReport allImpacts).
		  (ExReqRoassalGraphImpact requirementsViewForNode:
			   repositoryReport allImpacts) } inspect
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> requirementsView: aCollection [

	| canvas boxes stepping |
	canvas := RSCanvas new.
	boxes := aCollection collect: [ :impact |
		         RSBox new
			         model: impact;
			         yourself ].
	canvas addAll: boxes.
	canvas nodes @ (RSPopup text: [ :each | each requirement title ]).

	stepping := RSForceLayoutSteppingInteraction new.
	stepping layout
		length: 300;
		charge: -300.
	canvas @ stepping.
	canvas @ RSCanvasController.
	^ canvas
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> requirementsView: aCollection withMethod: aSymbol [

	| canvas |
	canvas := self requirementsView: aCollection.
	RSLineBuilder arrowedLine
		canvas: canvas;
		connectFrom: #yourself toAll: aSymbol.
	^ canvas
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> requirementsViewForClass: aCollection [

	^ self requirementsView: aCollection withMethod: #sameClass
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> requirementsViewForMethod: aCollection [

	^ self requirementsView: aCollection withMethod: #sameMethod
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> requirementsViewForNode: aCollection [

	^ self requirementsView: aCollection withMethod: #sameNode
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> requirementsViewForPackage: aCollection [

	^ self requirementsView: aCollection withMethod: #samePackage
]
