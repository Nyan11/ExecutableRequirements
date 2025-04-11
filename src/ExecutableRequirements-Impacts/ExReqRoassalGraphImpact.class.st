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
			 repositoryReport allImpacts).
		(ExReqRoassalGraphImpact repositoryGraphView: repositoryReport) }
		inspect
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> repositoryGraphView: aRepository [

	| canvas requirements packages classes methods |
	canvas := RSCanvas new.
	requirements := aRepository requirements collect: [ :obj |
		                RSBox new
			                model: obj;
			                @ (RSPopup text: [ :each | each title ]);
			                @ RSDraggable yourself ].
	packages := (aRepository associatedPackages collect: [ :obj |
		             RSCircle new
			             model: obj;
			             @ (RSPopup text: [ :each | each name ]);
			             @ RSDraggable yourself ]) asArray.
	classes := (aRepository associatedClasses collect: [ :obj |
		            RSCircle new
			            model: obj;
			            @ (RSPopup text: [ :each | each name ]);
			            @ RSDraggable yourself ]) asArray.
	methods := (aRepository associatedMethods collect: [ :obj |
		            RSCircle new
			            model: obj;
			            @ (RSPopup text: [ :each | each selector ]);
			            @ RSDraggable yourself ]) asArray.
	canvas addAll: requirements.
	canvas addAll: packages.
	canvas addAll: classes.
	canvas addAll: methods.

	"RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: packages;
		connectFrom: #yourself toAll: [ :each | each associatedPackages ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: classes;
		connectFrom: #yourself toAll: [ :each | each associatedClasses ]."
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: methods;
		connectFrom: #yourself toAll: [ :each | each associatedMethods ].

	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: classes;
		toShapes: packages;
		connectFrom: #yourself to: [ :each | each package ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: methods;
		toShapes: classes;
		connectFrom: #yourself to: [ :each | each methodClass ].

	RSHorizontalTreeLayout on:
		packages , classes , methods , requirements.

	canvas @ RSCanvasController.
	^ canvas
]

{ #category : 'as yet unclassified' }
ExReqRoassalGraphImpact class >> repositoryGraphViewWithAll: aRepository [

	| canvas requirements packages classes methods nodes |
	canvas := RSCanvas new.
	requirements := aRepository requirements collect: [ :obj |
		                RSBox new
			                model: obj;
			                @ (RSPopup text: [ :each | each title ]);
			                @ RSDraggable yourself ].
	packages := (aRepository associatedPackages collect: [ :obj |
		             RSCircle new
			             model: obj;
			             @ (RSPopup text: [ :each | each name ]);
			             @ RSDraggable yourself ]) asArray.
	classes := (aRepository associatedClasses collect: [ :obj |
		            RSCircle new
			            model: obj;
			            @ (RSPopup text: [ :each | each name ]);
			            @ RSDraggable yourself ]) asArray.
	methods := (aRepository associatedMethods collect: [ :obj |
		            RSCircle new
			            model: obj;
			            @ (RSPopup text: [ :each | each selector ]);
			            @ RSDraggable yourself ]) asArray.
	nodes := (aRepository associatedMethods collect: [ :obj |
		          RSCircle new
			          model: obj;
			          @ (RSPopup text: [ :each | each printString ]);
			          @ RSDraggable yourself ]) asArray.
	canvas addAll: requirements.
	canvas addAll: packages.
	canvas addAll: classes.
	canvas addAll: methods.
	canvas addAll: nodes.

	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: packages;
		connectFrom: #yourself toAll: [ :each | each associatedPackages ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: classes;
		connectFrom: #yourself toAll: [ :each | each associatedClasses ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: methods;
		connectFrom: #yourself toAll: [ :each | each associatedMethods ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: requirements;
		toShapes: nodes;
		connectFrom: #yourself toAll: [ :each | each associatedNodes ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: classes;
		toShapes: packages;
		connectFrom: #yourself to: [ :each | each package ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: methods;
		toShapes: classes;
		connectFrom: #yourself to: [ :each | each methodClass ].
	RSLineBuilder arrowedLine
		canvas: canvas;
		fromShapes: nodes;
		toShapes: methods;
		connectFrom: #yourself
		to: [ :each | each methodNode compiledMethod ].

	RSTreeLayout on: packages , classes , methods , nodes.
	canvas @ RSCanvasController.
	^ canvas
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
