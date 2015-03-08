testing
isEnabled
	"Don't make the free call if object not in external memory"
	^ enabled and: [ 
		(handle class == ByteArray) not and: [
			handle isNull not ] ]