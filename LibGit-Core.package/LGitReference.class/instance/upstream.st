accessing
upstream
	| upstream | 
	upstream  := LGitReference of: self repository.

	[ self withReturnHandlerDo: [
		self branch_upstream: upstream local: self
	]] 
	on: LGit_GIT_ENOTFOUND do: [ ^ nil ].
	^ upstream
