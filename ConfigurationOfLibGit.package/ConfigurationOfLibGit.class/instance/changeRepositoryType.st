doits
changeRepositoryType
	| repo newRepo |
	repo := MCRepositoryGroup default repositories detect: [ :r |
		r description endsWith: 'LibGit:master' ].
	newRepo := (Smalltalk at: #MCGitRepository) new
		remote: 'git@github.com:theseion/LibGit';
		directory: repo directory;
		yourself.
		
	MCRepositoryGroup default 
		removeRepository: repo;
		addRepository: newRepo