private
basicNextObjectId
	| nextId returnCode |
	nextId := LGitId externalNew.
	returnCode := self
		revwalk_next: nextId
		walk: self.
	(returnCode ~= LGitReturnCodeEnum GIT_ITEROVER and: [ 
		returnCode ~= LGitReturnCodeEnum GIT_OK ]) ifTrue: [ returnCode handleLGitReturnCode ].
	hasNext := returnCode ~= LGitReturnCodeEnum GIT_ITEROVER.
	
	^ nextId