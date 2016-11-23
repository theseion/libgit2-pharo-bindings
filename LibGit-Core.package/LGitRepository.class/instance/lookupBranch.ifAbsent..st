lookup
lookupBranch: name ifAbsent: aBlock
	^ [ self lookupBranch: name ]
		on: LGit_GIT_ENOTFOUND 
		do: aBlock 