operations
write
	| id errorCode |
	id := LG2GitOidS new.
	errorCode := self
		treebuilder_write: id
		repo: self repository
		bld: self.
		
	errorCode ~= 0 ifTrue: [ LGitWritingTreeFailed ].
	
	^ id