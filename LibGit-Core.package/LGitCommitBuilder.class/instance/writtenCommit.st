accessing
writtenCommit
	<todo: 'use proper exceptions'>
	commitId ifNil: [ self error: 'haven''t written the commit yet!' ].
	
	^ LGitCommit 
		of: self repository
		freeAfterUse: true
		fromId: self commitId