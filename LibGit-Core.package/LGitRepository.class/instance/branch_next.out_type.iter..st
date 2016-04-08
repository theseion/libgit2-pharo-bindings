libgit-calls
branch_next: out out_type: out_type iter: iter
	
	^ self
		call:
			#(LGitReturnCodeEnum git_branch_next #(LGitReference * out , LGitWriteBackValueUInt * out_type , LGitBranchIterator iter))
		options: #()