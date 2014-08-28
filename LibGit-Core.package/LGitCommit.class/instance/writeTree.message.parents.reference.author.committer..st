operations
writeTree: aTree message: messageString parents: aCollection reference: referenceString author: authorSignature committer: committerSignature

	| parentsPointer |
	self withReturnHandlerDo: [ 
		self assert: (aCollection allSatisfy: #isReady).
		parentsPointer := aCollection
			ifEmpty: [ NBExternalAddress null ]
			ifNotEmpty: [ (LGitCommitArray fromCollection: aCollection) address ].
		self
			commit_create: LGitId new 
			repo: aTree owner "libgit2 asserts the identity of this repository and the one it retrieves for the tree, so they need to be the same here"
			update_ref: referenceString
			author: authorSignature asSignatureStruct
			committer: committerSignature asSignatureStruct
			message_encoding: 'UTF-8'
			message: messageString
			tree: aTree
			parent_count: aCollection size
			parents: (NBExternalAddress value: parentsPointer value) ]