private
setUpHandlers
	^ (self declaration associations collect: [ :assoc |
		assoc value -> (LGitCallReturnHandler for: (self perform: assoc value)) ]) asDictionary