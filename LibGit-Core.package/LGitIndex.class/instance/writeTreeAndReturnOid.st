operations
writeTreeAndReturnOid
	| oid |
	oid := LG2GitOidS externalNew.
	self withReturnHandlerDo: [ 
		self
			index_write_tree: oid
			index: self ].
		
	^ oid