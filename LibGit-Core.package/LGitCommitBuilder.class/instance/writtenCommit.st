accessing
writtenCommit
	<todo: 'use proper exceptions'>
	commitId ifNil: [ self error: 'haven''t written the commit yet!' ].
	
	^ LGitCommit 
		fromId: self commitId
		of: self repository