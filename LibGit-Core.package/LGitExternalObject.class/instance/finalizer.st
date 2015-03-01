native-boost
finalizer
	^ finalizer ifNil: [
		"Can't pass the object itself here because that's a strong reference and will preven
		the object from being gc'ed.
		Also can't use a weak reference because that reference will point to nil after gc."
		finalizer := LGitResourceFinalizer forHandle: handle ]