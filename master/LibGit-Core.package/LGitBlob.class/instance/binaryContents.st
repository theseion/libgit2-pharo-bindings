private-accessing
binaryContents
	| externalBytes |
	"freeing not required. See #rawBuffer"
	externalBytes := self byteArrayClass 
		onAddress: self rawBuffer 
		size: self rawSize.
	^ externalBytes asByteArray.