traversing
subTreeEntries
	^ self entries select: [ :entry |
		entry type = LGitObjectTypeEnum GIT_OBJ_TREE ]