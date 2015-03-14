accessing
repositoryUrlHttps
	self loadTestData.
	^ repositoryUrlHttps ifNil: [ 
		repositoryUrlHttps := UIManager default request: 'HTTPS URL to the repository (https://github.com/user/repo.git)?' ]