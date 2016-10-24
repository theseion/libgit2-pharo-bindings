lookup
lookupBranch: name
	^ (name beginsWith: 'refs/remotes')
		ifTrue: [ self lookupRemoteBranch: (name withoutPrefix: 'refs/remotes/') ]
		ifFalse: [ self lookupLocalBranch: name ] 
