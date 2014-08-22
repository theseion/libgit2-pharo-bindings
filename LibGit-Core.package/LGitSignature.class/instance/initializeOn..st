initialize-release
initializeOn: aSignatureStruct
	name  := aSignatureStruct name readString.
	email := aSignatureStruct email readString.
	when  := LGitUtils 
		dateAndTimeFrom: aSignatureStruct when time 
		and: (Duration minutes: aSignatureStruct when offset)