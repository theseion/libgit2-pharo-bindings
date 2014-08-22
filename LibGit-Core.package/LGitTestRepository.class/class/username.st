accessing
username
	^ username ifNil: [ 
		username := UIManager default request: 'What''s your username (probably "git"?' ]