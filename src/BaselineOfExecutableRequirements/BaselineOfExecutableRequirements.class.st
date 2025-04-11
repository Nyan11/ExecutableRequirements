Class {
	#name : 'BaselineOfExecutableRequirements',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfExecutableRequirements',
	#package : 'BaselineOfExecutableRequirements'
}

{ #category : 'baselines' }
BaselineOfExecutableRequirements >> baseline: spec [
	"Common baseline for all Pharo versions"

	<baseline>
	spec for: #common do: [ self baselineForCommon: spec ]
]

{ #category : 'baselines' }
BaselineOfExecutableRequirements >> baselineForCommon: spec [

	<baseline>
	spec preLoadDoIt: #preload:package:.
	spec postLoadDoIt: #postload:package:.

	"Dependencies"
	self coreDependencies: spec.

	"Packages"
	self corePackages: spec
]

{ #category : 'baselines' }
BaselineOfExecutableRequirements >> coreDependencies: spec [

	"No dependencies"
]

{ #category : 'baselines' }
BaselineOfExecutableRequirements >> corePackages: spec [

	spec package: 'ExecutableRequirements'.

	spec
		package: 'ExecutableRequirements-Roassal'
		with: [ spec requires: #( 'ExecutableRequirements' ) ].
	spec
		package: 'ExecutableRequirements-Examples'
		with: [ spec requires: #( 'ExecutableRequirements' ) ].
	spec
		package: 'ExecutableRequirements-Tests'
		with: [ spec requires: #( 'ExecutableRequirements' ) ].
	spec
		package: 'ExecutableRequirements-UI'
		with: [ spec requires: #( 'ExecutableRequirements' ) ]
]

{ #category : 'baselines' }
BaselineOfExecutableRequirements >> postload: loader package: packageSpec [
	"do nothing"

	
]

{ #category : 'baselines' }
BaselineOfExecutableRequirements >> preload: loader package: packageSpec [
	"do nothing"

	
]
