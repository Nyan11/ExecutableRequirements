Class {
	#name : 'ExReqToploLoginSimulation',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Toplo-Example-UI',
	#package : 'ExecutableRequirements-Toplo-Example',
	#tag : 'UI'
}

{ #category : 'testing' }
ExReqToploLoginSimulation >> canAuthenticateUsername: aUsername password: aPassword [

	^ (aUsername = 'root' and: [ aPassword = 'root' ])
]
