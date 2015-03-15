enumerating
branchesDo: aBlock
	<todo: 'add support for remote branches'>
	| iterator returnCode branchType reference finishedCode |
	iterator := LGitBranchIterator of: self local: true.
	returnCode := LGitReturnCodeEnum GIT_OK.
	finishedCode := LGitReturnCodeEnum GIT_ITEROVER.
	branchType := LGitWriteBackValueUInt new.
	[ 
	reference := LGitReference of: self.
	returnCode := self branch_next: reference out_type: branchType iter: iterator.
	returnCode = finishedCode ] whileFalse: [ aBlock value: reference ]