operations
performFinalization
	"prevent double frees"
	self isEnabled ifFalse: [ ^ self ].
	
	self disable.
	class
		perform: class freeFunctionSelector
		with: handle value