accessing
upstream
	| upstream | 
	upstream  := LGitReference of: self repository.
	self withReturnHandlerDo: [
		 self branch_upstream: upstream local: self
	].
	^ upstream
