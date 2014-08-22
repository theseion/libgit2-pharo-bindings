accessing
password
	^ password ifNil: [ 
		password := UIManager default request: 'What''s your password?' ]