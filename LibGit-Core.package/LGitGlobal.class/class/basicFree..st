private
basicFree: handle
	<todo: 'platform dependent deallocation'>
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>	
	^ self nbCallout
		function: #(void free(ulong handle))
		module: NativeBoost CLibrary