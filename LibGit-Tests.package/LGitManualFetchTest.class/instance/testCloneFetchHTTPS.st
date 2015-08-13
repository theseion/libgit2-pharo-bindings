tests
testCloneFetchHTTPS
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo remote message |
	repo := self newRepo state0MissingReference.
	repo cloneHttps: self newRepo repositoryUrlHttps.
	self deny: (repo repositoryReference / '.git/FETCH_HEAD') exists.
	remote := LGitRemote of: repo named: 'master' url: self newRepo repositoryUrlHttps.

	message := 'Bart ate my shorts!'.
	self shouldnt: [ remote fetchWithMessage: message ] raise: LGitAbstractError.
	self assert: (repo repositoryReference / '.git/FETCH_HEAD') exists