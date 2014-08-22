accessing
callbacks
	^ callbacks ifNil: [ callbacks := LGitRemoteCallbacks new ]