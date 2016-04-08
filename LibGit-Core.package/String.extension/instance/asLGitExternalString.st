*libgit-core
asLGitExternalString
	| address |
	address := LGitGlobal allocate: self size + 1.
	LGitGlobal memCopy: self to: address size: self size.
	address getHandle byteAt: self size + 1 put: 0.
	^ address