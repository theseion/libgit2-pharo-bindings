accessing
keyPassPhrase
	^ keyPassPhrase ifNil: [ 
		keyPassPhrase := UIManager default request: 'Passphrase of your private key file?' ]