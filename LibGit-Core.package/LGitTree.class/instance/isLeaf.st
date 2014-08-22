testing
isLeaf
	^ self entries noneSatisfy: [ :entry |
		entry type = (self libGitObjectTypes at: #GIT_OBJ_TREE) ]