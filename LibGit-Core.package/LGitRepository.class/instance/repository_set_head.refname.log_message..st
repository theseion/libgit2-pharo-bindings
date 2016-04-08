libgit-calls
repository_set_head: repo refname: refname log_message: log_message
	
	^ self
		call:
			#(int git_repository_set_head #(LGitRepository repo , String refname , String log_message))
		options: #()