private
basicAllocate: aSize
	<todo: 'platform dependent allocation'>
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>	
	^ self nbCallout
		function: #(void * malloc(ulong aSize))
		module: NativeBoost CLibrary