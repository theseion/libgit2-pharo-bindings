libgit-calls
checkout_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(int git_checkout_init_options(LGitCheckoutOptions * self, LGitOptionsVersionsEnum version))
		options: #(  )