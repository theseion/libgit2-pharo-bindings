operations
updateTips
	self withReturnHandlerDo: [ 
		self
			push_update_tips: self
			signature: (self repository defaultSignature
				freeAfterUse: true;
				yourself)
			reflog_message: 'update by push' ]