private
basicAllocate: aSize
	^self ffiCall: #(void * malloc(size_t aSize)) module: LibC