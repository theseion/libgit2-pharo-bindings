doits
changeRepositoryType
	| repo newRepo |
	repo := MCRepositoryGroup default repositories detect: [ :r |
		r description endsWith: 'LibGit:master' ].
	'github-cache/theseion' asFileReference deleteAll.
	newRepo := (Smalltalk at: #MCGitRepository) new
		repoUrl: 'git@github.com:theseion/LibGit';
		ensureDirectory;
		yourself.
		
	MCRepositoryGroup allInstances
		select: [ :group | group repositories includes: repo ]
		thenDo: [ :group |  
			group
				removeRepository: repo;
				addRepository: newRepo ]