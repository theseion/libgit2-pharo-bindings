private
basicFree: handle
	^self ffiCall: #(void free(ulong handle)) module: LibC