private
lookup
	<todo: 'so ugly...'>
	| oid |
	oid := self id.
	oid class = LGitId ifFalse: [
		self withReturnHandlerDo: [ 
			oid := LGitId new.
			self oid_fromstr: oid str: self id ] ].
	self withReturnHandlerDo: [
		self
			commit_lookup: self 
			repo: self repository
			id: oid ]