libgit-calls
blob_id: blob
	
	^ self call: #(LGitId * git_blob_id #(self)) options: #()