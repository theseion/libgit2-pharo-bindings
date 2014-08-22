private
lookup
	<todo: 'so ugly...'>
	| oid |
	oid := self id.
	oid class = LG2GitOidS ifFalse: [
		self withReturnHandlerDo: [ 
			oid := LG2GitOidS new.
			self oid_fromstr: oid str: self id ] ].
	self withReturnHandlerDo: [
		self
			commit_lookup: self 
			repo: self repository
			id: oid ]