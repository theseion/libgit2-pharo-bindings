accessing
keyFilePublic
	^ keyFilePublic ifNil: [ 
		keyFilePublic := UIManager default request: 'Path to your public key file (/home/foo/.ssh/key.pub)?' ]