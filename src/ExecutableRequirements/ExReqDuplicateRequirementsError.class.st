Class {
	#name : 'ExReqDuplicateRequirementsError',
	#superclass : 'Error',
	#category : 'ExecutableRequirements-Technical',
	#package : 'ExecutableRequirements',
	#tag : 'Technical'
}

{ #category : 'signalling' }
ExReqDuplicateRequirementsError class >> signalFor: anObject in: aRepository [

	^ self signal: (self standardMessageFor: anObject in: aRepository)
]

{ #category : 'signalling' }
ExReqDuplicateRequirementsError class >> standardMessageFor: anObject in: aRepository [

	^ String streamContents: [ :stream |
		  stream print: anObject.
		  stream << ' duplicates in '.
		  stream print: aRepository ]
]
