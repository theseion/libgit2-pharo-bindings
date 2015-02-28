accessing
callbacks
	^ callbacks ifNil: [ callbacks := LGitRemoteCallbacks externalNew ]