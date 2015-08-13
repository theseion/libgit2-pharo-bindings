operations
checkout: aString
	<todo: 'use proper exceptions'>
	| object |
	self assert: aString notNil.
	self assert: aString trimBoth notEmpty.
	object := LGitObject of: self.
	self withReturnHandlerDo: [ self revparse_single: object repo: self spec: aString ].
	self
		withReturnHandlerDo: [ 
			self
				checkout_tree: self
				treeish: object
				opts:
					(LGitCheckoutOptions defaults
						checkoutStrategy: LGitCheckoutStrategyEnum git_checkout_safe;
						yourself) ].
	self
		withReturnHandlerDo: [ 
			self
				repository_set_head: self
				refname: aString
				log_message: 'checkout ' , aString ]