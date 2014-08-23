doits
changeRepositoryTypes
	| repo newRepo |
	repo := MCRepositoryGroup default repositories detect: [ :repo |
		repo description endsWith: 'LibGit' ].
	newRepo := (Smalltalk at: #MCGitRepository) new
		remote: 'git@github.com:theseion/LibGit';
		directory: repo directory;
		yourself.
		
	MCRepositoryGroup default 
		remove: repo;
		add: newRepo