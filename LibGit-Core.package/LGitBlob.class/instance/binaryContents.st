private-accessing
binaryContents
	| externalBytes |
	"freeing not required. See #rawBuffer"
	externalBytes := LGitExternalUInt8Array
		onAddress: self rawBuffer 
		size: self rawSize.
	^ externalBytes asByteArray