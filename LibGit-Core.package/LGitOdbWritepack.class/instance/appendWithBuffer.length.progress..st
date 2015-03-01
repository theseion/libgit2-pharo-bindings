accessing
appendWithBuffer: anAddress length: anInteger progress: aTransferProgress
	^ self prim_append
		writepack: self
		buffer: anAddress
		length: anInteger
		progress: aTransferProgress