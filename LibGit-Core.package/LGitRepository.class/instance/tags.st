accessing
tags
	| array |
	array := LGitStringArray externalNew
		freeAfterUse: true;
		yourself.
	self withReturnHandlerDo: [
		self
			tag_list: array
			repo: self ].
		
	^ array strings