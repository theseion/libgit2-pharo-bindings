accessing
version

	| major minor rev |
	
	INT_PTR := FFIExternalValueHolder ofType: 'int*'.
	
	major := INT_PTR new.
	minor := INT_PTR new.
	rev := INT_PTR new.
	
	self libgit2_version: major minor: minor rev: rev.
	^Array with: major value with: minor value with: rev value