testing
isLeaf
	^ self entries noneSatisfy: [ :entry |
		entry type = LGitObjectTypeEnum GIT_OBJ_TREE ]