accessing
usernameSsh
	^ usernameSsh ifNil: [ 
		usernameSsh := UIManager default request: 'What''s your username for SSH (probably "git"?' ]