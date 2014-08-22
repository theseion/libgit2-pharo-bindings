accessing
authorStruct
	<todo: 'use struct better'>
	^ LG2GitSignatureS fromPointer: (self commit_author: self)