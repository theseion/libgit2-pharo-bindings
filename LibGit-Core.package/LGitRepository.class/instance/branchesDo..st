enumerating
branchesDo: aBlock
	<todo: 'add support for remote branches'>
	| iterator returnCode branchType reference finishedCode |
	iterator := LGitBranchIterator
		of: self
		freeAfterUse: true
		local: true.
	returnCode := (self libGitReturnCodeTypes at: #GIT_OK).
	finishedCode := (self libGitReturnCodeTypes at: #GIT_ITEROVER).
	branchType := LGitWriteBackValueUInt new.
	[
		reference := LGitReference of: self freeAfterUse: true.
		returnCode :=  
			self
				branch_next: reference
				out_type: branchType
				iter: iterator.
		returnCode = finishedCode 
	] whileFalse: [ aBlock value: reference ]