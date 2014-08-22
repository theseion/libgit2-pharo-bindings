accessing
repositoryUrlSsh
	^ repositoryUrlSsh ifNil: [ 
		repositoryUrlSsh := UIManager default request: 'SSH URL to the repository (git@github.com:user/repo.git)?' ]