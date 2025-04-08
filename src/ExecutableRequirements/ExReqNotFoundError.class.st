Class {
	#name : 'ExReqNotFoundError',
	#superclass : 'Error',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'signalling' }
ExReqNotFoundError class >> signalFor: anObject in: aRepository [

	^ self signal: (self standardMessageFor: anObject in: aRepository)
]

{ #category : 'signalling' }
ExReqNotFoundError class >> standardMessageFor: anObject in: aRepository [

	^ String streamContents: [ :stream |
		  stream print: anObject.
		  stream << ' not found in '.
		  stream print: aRepository ]
]
