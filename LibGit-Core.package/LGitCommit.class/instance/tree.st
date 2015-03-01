accessing
tree
	| tree |
	tree := LGitTree
		of: self repository
		freeAfterUse: true.
	self commit_tree: tree commit: self.
	^ tree