libgit-calls
status_file: status_flags repo: repo path: path
	
	^ self
		call:
			#(LGitReturnCodeEnum git_status_file #(FFIInt32 * status_flags , LGitRepository repo , String path))
		options: #()