accessing
structure
	<todo: 'resource handling'>
	structure ifNil: [ structure := LGitRemoteCallbacksS new ].
	
	self credentials ifNotNilDo: [ :cred |
		structure credentials: cred ].
	
	^ structure