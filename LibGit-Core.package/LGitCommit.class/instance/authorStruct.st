accessing
authorStruct
	<todo: 'use struct better'>
	^ LGitSignature fromPointer: (self commit_author: self)