private
createCloneRepository
	| url |
	"cloning with https doesn't require credentials"
	url := (self repoUrl includes: $@)
		ifTrue: [ 'https://' , ((self repoUrl copyAfter: $@) copyUpTo: $:) , '/' , (self repoUrl copyAfterLast: $:) ]
		ifFalse: [ self repoUrl ].
	[ 
	| repo |
	repo := LGitRepository on: self directory asFileReference.
	repo
		clone: url;
		checkout: 'master'.	"make sure 'origin' is set to the original url, not to the https one if we used that"
	(LGitRemote of: repo named: 'origin')
		load;
		setUrl: self repoUrl;
		save ] asLibGitActionSequence