libgit-calls
signature_free: handle 
	^ self
		call: #(void git_signature_free(ulong handle))
		options: #(  )