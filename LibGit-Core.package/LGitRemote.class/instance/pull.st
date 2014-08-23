operations
pull
	<todo: 'check for conflicts'>
	self 
		fetchWithSignature: self repository defaultSignature
		message: 'automatic pull from libgit2'.
	
	"assume that there are no confilcts and fast-forwad to FETCH_HEAD"
	self repository fastForward