instance creation
fromSignature: aSignature
	<todo: 'resource management'>
	| signee email when instance |
	signee := aSignature name asNBExternalString.
	email := aSignature email asNBExternalString.
	when := LG2GitTimeS fromDateAndTime: aSignature dateAndTime.
	instance := self new
		name: signee;
		email: email;
		when: when;
		yourself.
		
	"{ signee. email. when address } do: [ :external | external freeAfterUse ]."
	
	^ instance