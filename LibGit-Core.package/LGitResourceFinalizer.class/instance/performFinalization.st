operations
performFinalization
	"prevent double frees"
	self isEnabled ifFalse: [ ^ self ].
	
	self disable.
	
	"Don't make the free call if object not in external memory"
	handles
		select: [ :handle | (handle class == ByteArray) not and: [ handle isNull not ] ]
		thenDo: [ :handle |
			class
				perform: class freeFunctionSelector
				with: handle value.
			handle beNull ]