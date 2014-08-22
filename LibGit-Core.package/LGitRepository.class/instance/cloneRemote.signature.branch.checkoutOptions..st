operations
cloneRemote: aRemote  signature: aSignature branch: aString checkoutOptions: options
	<todo: 'use exceptions instead of assertions'>
	self assert: aRemote hasFetchSpec.
	self assert: aRemote areCallbacksInitialized.
	
	self withReturnHandlerDo: [
		self 
			clone_into: self
			remote: aRemote
			co_opts: options
			branch: aString
			signature: aSignature asSignatureStruct ]