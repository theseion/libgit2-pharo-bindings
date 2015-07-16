*libgit-core
asLGitExternalString
	| address |
	address := LGitGlobal allocate: self size + 1.
	address writeString: self.
	^ address