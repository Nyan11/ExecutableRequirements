Class {
	#name : 'ExReqToploLoginWidget',
	#superclass : 'ToElement',
	#instVars : [
		'loginBlock',
		'authenticationBlock'
	],
	#category : 'ExecutableRequirements-Toplo-Example',
	#package : 'ExecutableRequirements-Toplo-Example'
}

{ #category : 'pyramid-serialized-bloc' }
ExReqToploLoginWidget class >> loginPanel [
	"This class has been generated using Pyramid.

	By: YannLEGOFF
	2025-04-18 13:31:54"

	<pyStash>
	^ [ | blinsets1 blinsets2 tobutton3 |
blinsets1 := BlInsets top: 0.0 right: 0.0 bottom: 0.0 left: 3.0.
blinsets2 := BlInsets top: 15.0 right: 0.0 bottom: 0.0 left: 0.0.
tobutton3 := ToButton new.
{(ToPane new
   background: (BlPaintBackground new
         paint: (BlColorPaint new
               color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
               yourself);
         opacity: 1.0;
         yourself);
   geometry: (BlRoundedRectangleGeometry cornerRadius: 6);
   addChildren: {(ToLabel new
         text: (BlRopedText new
               rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                           weight: 600;
                           yourself) . 
                        (BlFontFamilyDefaultAttribute new
                           name: 'Courier';
                           yourself) . 
                        (BlFontSizeDefaultAttribute new
                           size: 14;
                           yourself) . 
                        AlbTextParagraphLineSpacingAttribute new . 
                        (BlTextForegroundAttribute new
                           paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself) . 
                        (BlFontSizeAttribute new
                           size: 40;
                           yourself)} rope: (BlCollectionRope new
                           collection: 'Welcome !';
                           yourself));
               yourself);
         constraintsDo: [:constraints |  constraints horizontal fitContent.
            constraints vertical fitContent.
            constraints margin: blinsets2 ];
         id: #welcomeLabel;
         yourself) . 
      (BlElement new
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 1.0 g: 0.9217986314760508 b: 0.9100684261974584 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         border: (BlBorderBuilder new
               paint: (BlColorPaint new
                     color: (Color r: 0.7996089931573802 g: 0.20039100684261973 b: 0.20039100684261973 alpha: 1.0);
                     yourself);
               build);
         visibility: BlVisibility gone;
         addChildren: {(ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'Wrong';
                                 yourself));
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints margin: blinsets1 ];
               yourself) . 
            (ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'login';
                                 yourself));
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints margin: blinsets1 ];
               yourself) . 
            (ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'informations';
                                 yourself));
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints margin: blinsets1 ];
               yourself) . 
            (ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'or';
                                 yourself));
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints margin: blinsets1 ];
               yourself) . 
            (ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'expired';
                                 yourself));
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints margin: blinsets1 ];
               yourself) . 
            (ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'account.';
                                 yourself));
                     yourself);
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent.
                  constraints margin: blinsets1 ];
               yourself)};
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent.
            constraints padding: (BlInsets all: 15.0).
            constraints margin: (BlInsets top: 15.0 right: 0.0 bottom: 0.0 left: 0.0) ];
         layout: BlFlowLayout horizontal;
         id: #loginStatusContainer;
         yourself) . 
      (ToLabel new
         text: (BlRopedText new
               rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                           weight: 600;
                           yourself) . 
                        (BlFontFamilyDefaultAttribute new
                           name: 'Courier';
                           yourself) . 
                        (BlFontSizeDefaultAttribute new
                           size: 14;
                           yourself) . 
                        AlbTextParagraphLineSpacingAttribute new . 
                        (BlTextForegroundAttribute new
                           paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself) . 
                        (BlFontSizeAttribute new
                           size: 16;
                           yourself)} rope: (BlCollectionRope new
                           collection: 'Username';
                           yourself));
               yourself);
         constraintsDo: [:constraints |  constraints horizontal fitContent.
            constraints vertical fitContent.
            constraints margin: blinsets2 ];
         id: #usernameLabel;
         yourself) . 
      (ToTextField new
         border: (BlBorderBuilder new
               paint: (BlColorPaint new
                     color: (Color r: 0.624633431085044 g: 0.624633431085044 b: 0.624633431085044 alpha: 1.0);
                     yourself);
               build);
         geometry: (BlRoundedRectangleGeometry cornerRadius: 6);
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent.
            constraints padding: (BlInsets top: 4.0 right: 8.0 bottom: 4.0 left: 8.0) ];
         id: #usernameInput;
         yourself) . 
      (ToLabel new
         text: (BlRopedText new
               rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                           weight: 600;
                           yourself) . 
                        (BlFontFamilyDefaultAttribute new
                           name: 'Courier';
                           yourself) . 
                        (BlFontSizeDefaultAttribute new
                           size: 14;
                           yourself) . 
                        AlbTextParagraphLineSpacingAttribute new . 
                        (BlTextForegroundAttribute new
                           paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                           yourself) . 
                        (BlFontSizeAttribute new
                           size: 16;
                           yourself)} rope: (BlCollectionRope new
                           collection: 'Password';
                           yourself));
               yourself);
         constraintsDo: [:constraints |  constraints horizontal fitContent.
            constraints vertical fitContent.
            constraints margin: blinsets2 ];
         id: #passwordLabel;
         yourself) . 
      (ToTextField new
         border: (BlBorderBuilder new
               paint: (BlColorPaint new
                     color: (Color r: 0.624633431085044 g: 0.624633431085044 b: 0.624633431085044 alpha: 1.0);
                     yourself);
               build);
         geometry: (BlRoundedRectangleGeometry cornerRadius: 6);
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent.
            constraints padding: (BlInsets top: 4.0 right: 8.0 bottom: 4.0 left: 8.0) ];
         id: #passwordInput;
         yourself) . 
      (tobutton3
         endFlexible: true;
         flexible: true;
         middleElement: (ToLabel new
               text: (BlRopedText new
                     rope: (BlAttributeRope attributes: {(BlFontWeightAttribute new
                                 weight: 600;
                                 yourself) . 
                              (BlFontFamilyDefaultAttribute new
                                 name: 'Courier';
                                 yourself) . 
                              (BlFontSizeDefaultAttribute new
                                 size: 14;
                                 yourself) . 
                              AlbTextParagraphLineSpacingAttribute new . 
                              (BlTextForegroundAttribute new
                                 paint: (Color r: 0.0 g: 0.0 b: 0.0 alpha: 1.0);
                                 yourself)} rope: (BlCollectionRope new
                                 collection: 'Login';
                                 yourself));
                     yourself);
               addStamp: #'parent-button' withValue: tobutton3;
               constraintsDo: [:constraints |  constraints horizontal fitContent.
                  constraints vertical fitContent ];
               yourself);
         startFlexible: true;
         background: (BlPaintBackground new
               paint: (BlColorPaint new
                     color: (Color r: 1.0 g: 1.0 b: 1.0 alpha: 1.0);
                     yourself);
               opacity: 1.0;
               yourself);
         border: (BlBorderBuilder new
               paint: (BlColorPaint new
                     color: (Color r: 0.8514173998044966 g: 0.8514173998044966 b: 0.8514173998044966 alpha: 1.0);
                     yourself);
               build);
         geometry: (BlRoundedRectangleGeometry cornerRadius: 6);
         mouseCursor: (Cursor classPool at: #NormalCursor);
         constraintsDo: [:constraints |  constraints horizontal matchParent.
            constraints vertical fitContent.
            constraints padding: (BlInsets top: 4.0 right: 8.0 bottom: 4.0 left: 8.0).
            constraints margin: blinsets2 ];
         id: #loginButton;
         yourself)};
   constraintsDo: [:constraints |  constraints horizontal exact: 260.0.
      constraints vertical fitContent.
      constraints padding: (BlInsets all: 30.0) ];
   layout: BlLinearLayout vertical;
   id: #login;
   yourself)} ] value
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> authenticationBlock [

	^ authenticationBlock
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> authenticationBlock: aBlock [

	authenticationBlock := aBlock
]

{ #category : 'initialization' }
ExReqToploLoginWidget >> initialize [

	super initialize.
	self addChildren: self class loginPanel.
	self constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent ].
	self usernameInput withoutLineBreak.
	self passwordInput withoutLineBreak.
	authenticationBlock := [ :username :password | false ].
	loginBlock := [  ].
	self loginButton whenClickedDo: [ self loginAction ].
	self loginStatusContainer visibility: BlVisibility gone
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> loginAction [

	[ self authenticationBlock
		  value: self usernameValue
		  value: self passwordValue.
			self loginBlock value ]
		on: Exception do: [ :error |
			self loginStatusContainer visibility: BlVisibility visible.
			self passwordInput text: '' ]
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> loginBlock [

	^ loginBlock
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> loginBlock: aBlock [

	loginBlock := aBlock
]

{ #category : 'initialization' }
ExReqToploLoginWidget >> loginButton [

	^ (self childWithId: #login) childWithId: #loginButton
]

{ #category : 'initialization' }
ExReqToploLoginWidget >> loginStatusContainer [

	^ (self childWithId: #login) childWithId: #loginStatusContainer
]

{ #category : 'initialization' }
ExReqToploLoginWidget >> passwordInput [

	^ (self childWithId: #login) childWithId: #passwordInput
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> passwordValue [

	^ self passwordInput text asString
]

{ #category : 'initialization' }
ExReqToploLoginWidget >> usernameInput [

	^ (self childWithId: #login) childWithId: #usernameInput
]

{ #category : 'as yet unclassified' }
ExReqToploLoginWidget >> usernameValue [

	^ self usernameInput text asString
]
