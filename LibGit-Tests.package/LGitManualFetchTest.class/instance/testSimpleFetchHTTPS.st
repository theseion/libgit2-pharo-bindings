tests
testSimpleFetchHTTPS
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo remote signature packDirectory message |
	repo := self newRepo state3Opened.
	remote := LGitRemote 
		of: repo
		freeAfterUse: true
		named: 'origin'
		url: self newRepo repositoryUrlHttps.
	signature := LGitSignature new
		name: 'Homer Simpson';
		email: 'foo@bar.ogr';
		dateAndTime: DateAndTime now;
		yourself.
	message := 'Bart ate my shorts!'.
	
	self 
		shouldnt: [ remote fetchWithSignature: signature message: message ]
		raise: LGitError.
	
	packDirectory := repo workingDirectory / '.git/objects/pack'.
	self assert: packDirectory exists.
	self deny: packDirectory children isEmpty.
	self assert: packDirectory children size equals: 2.
	self assert: (packDirectory children contains: [ :child | child basename endsWith: '.pack' ]).
	self assert: (packDirectory children contains: [ :child | child basename endsWith: '.idx' ]).
	self assert: (repo workingDirectory / '.git/FETCH_HEAD') exists