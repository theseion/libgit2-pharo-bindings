accessing
keyFilePrivate
	^ keyFilePrivate ifNil: [ 
		keyFilePrivate := UIManager default request: 'Path to your private key file (/home/foo/.ssh/key)?' ]