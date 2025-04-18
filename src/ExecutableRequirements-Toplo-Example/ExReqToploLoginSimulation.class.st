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
ExReqToploLoginSimulation class >> authentificationPage [

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
	widget authentificationBlock: [ :user :pass |
		database authentificateUsername: user password: pass ].
	widget loginBlock: [ self inform: 'Login success !' ].
	^ widget
]

{ #category : 'instance creation' }
ExReqToploLoginSimulation class >> open [

	<script>
	| space |
	space := self authentificationPage show.
	space show.
	space
		addEventHandlerOn: BlSpaceShownEvent
		do: [ :evt |
			evt source pulse.
		evt source root background: (Color fromHexString: 'a1b8cc') ].
	^ space
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
