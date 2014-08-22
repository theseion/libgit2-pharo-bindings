traversing
subTreeEntries
	^ self entries select: [ :entry |
		entry type = (self libGitObjectTypes at: #GIT_OBJ_TREE) ]