Class {
	#name : 'ExReqRoassalViews',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Roassal-Views',
	#package : 'ExecutableRequirements-Roassal',
	#tag : 'Views'
}

{ #category : 'as yet unclassified' }
ExReqRoassalViews class >> repositoryReportView: aRepositoryReport [

	<script: 'self repositoryReportViewExample'>
	| canvas requirements packages classes methods colorPalette |
	canvas := RSCanvas new.
	colorPalette := RSColorPalette sequential blues3.
	requirements := aRepositoryReport requirementReports collect: [ :obj |
		                | color |
		                color := Color gray.
		                obj isInstalled ifTrue: [
			                color := obj isValid
				                ifTrue: [ Color green ]
				                ifFalse: [
					                obj isRunning
						                ifTrue: [ Color yellow ]
						                ifFalse: [ Color red ] ] ].
		                RSBox new
			                model: obj;
			                color: color;
			                @
				                (RSPopup text: [ :each | each requirement title ]);
			                @ RSDraggable yourself ].
	packages := (aRepositoryReport associatedPackages collect: [ :obj |
		             RSCircle new
			             model: obj;
			             color: (colorPalette scale: 1);
			             @ (RSPopup text: [ :each | each name ]);
			             @ RSDraggable yourself ]) asArray.
	classes := (aRepositoryReport associatedClasses collect: [ :obj |
		            RSCircle new
			            model: obj;
			            color: (colorPalette scale: 2);
			            @ (RSPopup text: [ :each | each name ]);
			            @ RSDraggable yourself ]) asArray.
	methods := (aRepositoryReport associatedMethods collect: [ :obj |
		            RSCircle new
			            model: obj;
			            color: (colorPalette scale: 3);
			            @ (RSPopup text: [ :each | each selector ]);
			            @ RSDraggable yourself ]) asArray.
	canvas addAll: requirements.
	canvas addAll: packages.
	canvas addAll: classes.
	canvas addAll: methods.

	RSLineBuilder line
		withBorderAttachPoint;
		canvas: canvas;
		fromShapes: requirements;
		toShapes: methods;
		connectFrom: #yourself
		toAll: [ :each | each requirement associatedMethods ].

	RSLineBuilder line
		withBorderAttachPoint;
		canvas: canvas;
		fromShapes: classes;
		toShapes: packages;
		connectFrom: #yourself to: [ :each | each package ].
	RSLineBuilder line
		withBorderAttachPoint;
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
ExReqRoassalViews class >> repositoryReportViewExample [

	| repositoryReport |
	repositoryReport := ExReqRepository new
		                    pragmaSelector: #ExReqTODO;
		                    asReport.
	(self repositoryReportView: repositoryReport) inspect
]

{ #category : 'as yet unclassified' }
ExReqRoassalViews class >> repositoryView: aRepository [

	<script: 'self repositoryViewExample'>
	| canvas requirements packages classes methods color |
	canvas := RSCanvas new.
	color := RSColorPalette sequential blues3.
	requirements := aRepository requirements collect: [ :obj |
		                RSBox new
			                model: obj;
			                @ (RSPopup text: [ :each | each title ]);
			                @ RSDraggable yourself ].
	packages := (aRepository associatedPackages collect: [ :obj |
		             RSCircle new
			             model: obj;
			             color: (color scale: 1);
			             @ (RSPopup text: [ :each | each name ]);
			             @ RSDraggable yourself ]) asArray.
	classes := (aRepository associatedClasses collect: [ :obj |
		            RSCircle new
			            model: obj;
			            color: (color scale: 2);
			            @ (RSPopup text: [ :each | each name ]);
			            @ RSDraggable yourself ]) asArray.
	methods := (aRepository associatedMethods collect: [ :obj |
		            RSCircle new
			            model: obj;
			            color: (color scale: 3);
			            @ (RSPopup text: [ :each | each selector ]);
			            @ RSDraggable yourself ]) asArray.
	canvas addAll: requirements.
	canvas addAll: packages.
	canvas addAll: classes.
	canvas addAll: methods.

	RSLineBuilder line
		withBorderAttachPoint;
		canvas: canvas;
		fromShapes: requirements;
		toShapes: methods;
		connectFrom: #yourself toAll: [ :each | each associatedMethods ].

	RSLineBuilder line
		withBorderAttachPoint;
		canvas: canvas;
		fromShapes: classes;
		toShapes: packages;
		connectFrom: #yourself to: [ :each | each package ].
	RSLineBuilder line
		withBorderAttachPoint;
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
ExReqRoassalViews class >> repositoryViewExample [

	| repositoryReport |
	repositoryReport := ExReqRepository new
		                    pragmaSelector: #ExReqTODO;
		                    yourself.
	(self repositoryView: repositoryReport) inspect
]

{ #category : 'see class side' }
ExReqRoassalViews >> seeClassSide [
]
