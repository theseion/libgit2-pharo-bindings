tests
testSimpleFetchHTTPS
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo remote packDirectory message |
	repo := self newRepo state3Opened.
	remote := LGitRemote of: repo named: 'origin' url: self newRepo repositoryUrlHttps.

	message := 'Bart ate my shorts!'.
	self shouldnt: [ remote fetchWithMessage: message ] raise: LGitAbstractError.
	packDirectory := repo workingDirectory / '.git/objects/pack'.
	self assert: packDirectory exists.
	self deny: packDirectory children isEmpty.
	self assert: packDirectory children size equals: 2.
	self assert: (packDirectory children contains: [ :child | child basename endsWith: '.pack' ]).
	self assert: (packDirectory children contains: [ :child | child basename endsWith: '.idx' ]).
	self assert: (repo workingDirectory / '.git/FETCH_HEAD') exists