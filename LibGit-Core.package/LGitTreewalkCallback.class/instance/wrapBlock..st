initialization
wrapBlock: aThreeArgBlock

	^[ :rootPath :entryAddress :payload |
		aThreeArgBlock 
			value: rootPath 
			value: (LGitTreeEntry basicNew setHandle: entryAddress)
			value: payload ]
		