accessing
commit
	^ self
		commit_create: LGitId new
		repo: self repository
		update_ref: 'HEAD'
		author: self author address
		committer: self committer address
		message_encoding: 'UTF-8'
		message: 'another message'
		tree: self tree
		parent_count: 0
		parents: NBExternalAddress null