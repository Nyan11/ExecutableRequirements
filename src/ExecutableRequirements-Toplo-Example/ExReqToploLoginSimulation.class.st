Class {
	#name : 'ExReqToploLoginSimulation',
	#superclass : 'Object',
	#instVars : [
		'database'
	],
	#category : 'ExecutableRequirements-Toplo-Example',
	#package : 'ExecutableRequirements-Toplo-Example'
}

{ #category : 'instance creation' }
ExReqToploLoginSimulation class >> open [

	<script>
	| widget database |
	database := self new.
	widget := ExReqToploLoginWidget new.
	widget authentificationBlock: [ :user :pass |
		database authentificateUsername: user password: pass ].
	widget loginBlock: [ self inform: 'Login success !' ].
	widget openInNewSpace
]

{ #category : 'as yet unclassified' }
ExReqToploLoginSimulation >> authentificateUsername: aUsernameString password: aPasswordString [

	self database
		at: aUsernameString
		ifPresent: [ :value | ^ aPasswordString = value ]
		ifAbsent: [ ^ false ]
]

{ #category : 'as yet unclassified' }
ExReqToploLoginSimulation >> database [

	^ database
]

{ #category : 'as yet unclassified' }
ExReqToploLoginSimulation >> initialize [

	database := Dictionary new.
	database at: 'user1' put: 'pass1'.
	database at: 'user2' put: 'pass2'.
	database at: 'user3' put: 'pass3'.
]
