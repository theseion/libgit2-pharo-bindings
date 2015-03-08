accessing
master
	<todo: 'handle return code properly; don''t use a dummy reference'>
	
	^ [ self lookupBranch: 'master' ]
		on: LGit_GIT_ENOTFOUND
		do: [ self createBranch: 'master' force: true ]