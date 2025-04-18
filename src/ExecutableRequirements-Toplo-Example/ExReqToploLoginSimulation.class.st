Class {
	#name : 'ExReqToploLoginSimulation',
	#superclass : 'Object',
	#instVars : [
		'database'
	],
	#category : 'ExecutableRequirements-Toplo-Example',
	#package : 'ExecutableRequirements-Toplo-Example'
}

{ #category : 'as yet unclassified' }
ExReqToploLoginSimulation class >> authenticationPage [

	| widget background space |
	widget := self defaultWidget.
	background := BlElement new
		              background: (Color fromHexString: 'a1b8cc');
		              layout: BlFrameLayout new;
		              constraintsDo: [ :c |
			              c horizontal matchParent.
			              c vertical matchParent ];
		              yourself.
	space := BlSpace new.
	space root layout: BlFrameLayout new.
	space root addChild: background.
	background addChild: widget.
	widget constraintsDo: [ :c |
		c frame vertical alignCenter.
		c frame horizontal alignCenter ].
	^ space
]

{ #category : 'instance creation' }
ExReqToploLoginSimulation class >> defaultWidget [

	<script: 'self defaultWidget inspect'>
	| widget database |
	database := self new.
	widget := ExReqToploLoginWidget new.
	widget authenticationBlock: [ :user :pass |
		database authenticateUsername: user password: pass ].
	widget loginBlock: [ self inform: 'Login success !' ].
	^ widget
]

{ #category : 'instance creation' }
ExReqToploLoginSimulation class >> open [

	<script>
	^ self authenticationPage show.
	
]

{ #category : 'as yet unclassified' }
ExReqToploLoginSimulation >> authenticateUsername: aUsernameString password: aPasswordString [

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
